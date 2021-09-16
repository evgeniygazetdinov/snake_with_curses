#include <stdio.h>
#include <curses.h>
#include <stdlib.h>
#include <time.h>

#define MAX_SNAKE_SIZE 500
char** board;
typedef struct Coord{
    int row;
    int col;

}Coord;
Coord snake[MAX_SNAKE_SIZE];
int init_snake_size = 1;
int snake_length = 5;

int lines, cols;

Coord get_random_pos(){
    Coord res;
    res.row = rand() % lines;
    res.col = rand() % cols;
    return res;
}
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
    lines = LINES;
    cols = COLS;
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
void put(int row, int col, char ch){
    board[row][col] =ch;
    move(row,col);
    addch(ch);

}

int main() {
    srand((unsigned) time(NULL));
    init();
    init_board();
    snake[0] = get_random_pos();
    while(1){

    }
    my_finish();
    endwin();
    return 0;
}