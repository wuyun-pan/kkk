from tkinter import *

win = Tk()
win.title('log in')
win.geometry('300x150')
win.resizable(0, 0)
Label(text='account:').place(x=50, y=30)
uname = Entry(win)
uname.place(x=100, y=30)
Label(text='password:').place(x=50, y=70)
pwd = Entry(win)
pwd.place(x=100, y=70)
def login():
    username = uname.get()
    password = pwd.get()
    if username == 'abc' and password == '123':
        print('log in success')
    else:
        print('invalid account or wrong password')
Button(text='log in', command=login).place(x=100, y=110)

win.mainloop()
