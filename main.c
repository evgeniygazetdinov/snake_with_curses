#include <stdio.h>
#include <curses.h>
#include <stdlib.h>

char** board;

void init(){
    initscr();
    savetty();
    nonl();
    nocbreak();
    noecho();
    timeout(0);
    leaveok(stdscr, TRUE);
    curs_set(0);
}
void my_finish(){
   curs_set(1);
   clear();
   refresh();
   resetty();
   endwin();
   exit(0);
}

void init_board(){
    int i, j;
    board = (char**) malloc(LINES * sizeof(char*));
    if(!board){
        my_finish();
    }
    for(int i=0;i<LINES;i++){
        board[i] = (char*) malloc(COLS * sizeof(char));
        if(!board[i]){
            my_finish();
        }
    }
    for(i=0;i<LINES;i++){
        for(j=0;j<COLS;j++){
            board[i][j] = '*';
        }
    }
}

int main() {
    printf("Hello, World!\n");
    init();
    init_board();
    move(2,0);
    addch('*');
    napms(3000);
    wgetch(stdscr);
    napms(3000);
    my_finish();
    endwin();
    return 0;
}