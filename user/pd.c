#include "kernel/types.h"
#include "kernel/stat.h"
#include "kernel/memlayout.h"
#include "user/user.h"

int main(int argc, char *argv[])
{
    printf("PHYSTOP:%ld\n", PHYSTOP);
    exit(0);
}