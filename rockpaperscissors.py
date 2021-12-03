##############################-Just a little rock paper scissors game-############################

#You're basically asking both the player and the comp. after a selection and controls who has won

###############################################-Code-#############################################
from random import randrange  

pc=0
cc=0
pp=0
cp=0
s=0

while True:
    while s==0:
        print('Your Points: '+ str(pp))
        print('Comp. Points: '+ str(cp))
        r = input('Reset?[r], otherwise press any key!')
        if r=='r':
            cp=0
            pp=0
        pc=int(input('Scissor [1], Stone[2],Paper [3]'))
        cc=randrange(1,4)
        s=1
    #checking
    if s==1:
        #draw
        if pc==cc:
            print('Draw')
        #scissor
        elif pc==1:
            if cc==2:
                print('Lost, Computer wins w. Stone vs. Scissors')
                cp+=1
            elif cc==3:
                print('Won, Computer lost w. Paper vs. Scissors')
                pp+=1
        #stone
        elif pc==2:
            if cc==1:
                print('Won, Computer lost w. Scissors vs. Stone')
                pp+=1
            elif cc==3:
                print('Lost, Computer wins w. Paper vs. Stone')
                cp+=1
        #paper:
        elif pc==3:
            if cc==1:
                print('Lost, Computer wins w. Scissors vs. Paper')
                cp+=1
            elif cc==2:
                print('Won, Computer lost w. Stone vs. Paper')
                pp+=1
        s=0        