#include <curses.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

#define MAX_SNAKE_SIZE 500
#define POINT '*'
#define LEFT 0
#define RIGHT 1
#define UP 2
#define DOWN 3
#define STOP 4

// initial snake position//
int direction = STOP;

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

void put(int row, int col, char ch){
    board[row][col] = ch;
    move(row,col);
    addch(ch);
}

void my_debug(){
    put(1,1,'+');
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

void change_direction(){
    int keypres;
    keypres = wgetch(stdscr);
    if(keypres == ERR){
        return;
    }
    else if(keypres == 'a'){
        direction = LEFT;
    }
    else if(keypres == 'd'){
        direction = RIGHT;
    }
    else if (keypres == 's') {
        direction = DOWN;
    }
    else if(keypres == 'w'){
        direction = UP;
    }
    else if(keypres == 'q'){
        my_finish();
    }
}

void change_head(){
    if (direction == RIGHT){
        snake[0].col++;
    }
    else if(direction == LEFT){
        snake[0].col--;
    }
    else if (direction == UP){
        snake[0].row --;
    }
    else if(direction == DOWN){
        snake[0].row ++;
    }
}

int vefity_head(){
    if (snake[0].row <0 || snake[0].col < 0
        || snake[0].row >= lines || snake[0].col >= cols ){
        return -1;
    }
    if(board[snake[0].row][snake[0].col] != ' '){
        return -1;
    }
    return 0;

}

void logic(){
    change_direction();
    memmove(&snake[1], &snake[0], sizeof(Coord) * init_snake_size);
    change_head();
//    if(vefity_head()){
//        direction = STOP;
//        return;
//    }
    put(snake[0].row, snake[0].col, POINT);
    if(init_snake_size < snake_length){
        init_snake_size ++;
    }
    else{
        put(snake[init_snake_size].row, snake[init_snake_size].col, ' ');

    }
}

int main() {
    srand((unsigned) time(NULL));
    init();
    init_board();
    snake[0] = get_random_pos();
    put(snake[0].row, snake[0].col, POINT);
    while(1){
        change_direction();
        if(direction != STOP){
            logic();
        }
        wgetch(stdscr);
        napms(50);
    }
    my_finish();
    endwin();
    return 0;
}