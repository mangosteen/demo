#include <stdio.h>
#include <errno.h>
#include <unistd.h>
#include <sys/wait.h>
#include <string.h>
#include <sys/types.h>

static char *sub_process_name = "/bin/bash";

void usage() {
    perror("usage:\n  1. ./suid fork_exec $exepath\n  2. ./suid exec $exepath\n");
}

int main(int argc, char *argv[])
{
    if (argc != 3) {
        usage();
        return 1;
    }
    setuid(0);
    if (strcmp(argv[1], "fork_exec") == 0) {
        pid_t pid;
        pid = fork();
        if (pid < 0)
        {
            perror("fork");
            return 1;
        }
        if (pid == 0)
        {
            char *newargv[] = { argv[2], NULL };
            execv(argv[2], newargv);
            perror("execv");
            return 1;
        }
        int status;
        wait(&status);

    } else if (strcmp(argv[1], "exec") == 0) {
        char *newargv[] = { argv[2], NULL };
        execv(argv[2], newargv);
        perror("execv");
        return 1;
    } else {
        usage();
        return 1;
    }
    return 0;
}
