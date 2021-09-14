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
    board = (char**) malloc(LINES * sizeof(char*));
    if(!board){
        my_finish();
    }
    for(int i=0;i<LINES;i++){
        board[i] = (char*) malloc(COLS * sizeof(char));
    }
}

void write_some_thing(){

}

int main() {
//    printf("Hello, World!\n");
    init();
    init_board();
//    finish();
    return 0;
}