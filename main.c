#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, char **argv) {
    FILE *file = NULL;
    char *ptr;
    char *input; // if inputs are numbers, each input is a number
    char chars[100]; // if input is a file, read the numbers from the file
    long long inputs[100];
    int numberSize; // the size of number input
    int numberCPU = 16; // since professor Reed has 16 CPUs
    int child_pipes[numberCPU]; // an array of pipes for children to write

    //------------------------------ read from command line ------------------------------
    // if no input at all
    if (argc < 1){
        printf("Please enter a positive number or a file name\n");
        exit(1);  // exit with a positive number
    }

    // if the input is a file
    else  if (argc == 1){
        int i=0;
        while (fgets(chars, sizeof(chars), stdin) != 0){
            inputs[i] = strtoll(chars, &ptr, 10); // read each line and store number in inputs
            i++;
        }
        numberSize = i;
        fclose(file);
    }

    // if input are numbers
    else{
        for (int j = 1; j < argc; j++){
            input = argv[j]; // get each input
            // credit of how to write strtoll function to Xinxin Yang
            inputs[j-1] = strtoll(input, &ptr, 10); // store input into inputs from index 0
            if (inputs[j-1] == 0 ){ // if the number is negative or a string, the return value is 0
                printf("Please enter a positive number or a file name\n");
                exit(1); // exit with a positive number
            }
            else
                numberSize = argc-1;
        }
    }

    //------------------------------ write into child process ------------------------------
    for (int index = 0; index < numberSize; index++) {
        long long number = inputs[index];

        // credit to Professor Reed -- the idea of using for loop to create children processes, using array of pipes, the write function, and the read function
        for (int i = 0; i < numberCPU; i++) {
            int fds[2];
            pipe(fds);

            if (fork() == 0) {
                long long start = number / numberCPU * i;
                long long end = number / numberCPU * (i + 1);

                if (i == numberCPU-1) { // for not enough size
                    end = number;
                }

                long long factors[number / numberCPU];
                int j = 0;
                // inside of each range, check all numbers but exclude 0
                for (long long k = start + 1; k < end + 1; k++) {
                    if (number % k == 0) {
                        factors[j] = k;
                        j++;
                    }
                }

                int size = j;
                write(fds[1], &size, 4); // define the address of where to start write
                write(fds[1], factors, 8 * size);
                close(fds[1]); // if don’t close the pipe, then parent will sit to wait for the result, it will not know when the child is done, by closing the pipe, the child will return, so close() signals the parent that there is nothing
                exit(0);  // exit child process
            }
            child_pipes[i] = fds[0];
        }

        //------------------------------ read from parent process ------------------------------
        // wait for all the child to finish their processes
        for (int i = 0; i < numberCPU; i++) {
            wait(NULL);
        }

        printf("%lld: ", number);
        for (int k = 0; k < numberCPU; k++) {
            int count;
            read(child_pipes[k], &count, 4); // get a location for read to start
            long long results[count];
            read(child_pipes[k], results, 8 * count); // start to read and consume bytes

            for (int i = 0; i < count; i++) {
                printf("%lld ", results[i]);
            }
        }
        printf("\n");
    }
}
