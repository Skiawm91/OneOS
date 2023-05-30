import tkinter as tk
import sys

class Calculator:
    def __init__(self, master):
        self.master = master
        master.title("OneOS計算機")
        master.resizable(False, False)

        # 計算機輸入框
        self.input_var = tk.StringVar()
        self.input_var.set("")
        self.input_entry = tk.Entry(master, textvariable=self.input_var, font=('Arial', 20))
        self.input_entry.grid(row=0, column=0, columnspan=4, sticky='ew')

        # 計算機按鈕
        buttons = ['7', '8', '9', '/', '4', '5', '6', '*', '1', '2', '3', '-', '0', '.', '=', '+']
        row = 1
        col = 0
        for button_text in buttons:
            button = tk.Button(master, text=button_text, font=('Arial', 20), bg='white', fg='black', command=lambda text=button_text: self.button_click(text))
            button.grid(row=row, column=col, sticky='nsew', padx=2, pady=2)
            col += 1
            if col > 3:
                col = 0
                row += 1

    def button_click(self, text):
        if text == '=':
            try:
                result = eval(self.input_var.get())
                self.input_var.set(result)
            except:
                self.input_var.set("錯誤")
        elif text == 'C':
            self.input_var.set('')
        elif text == 'CE':
            self.input_var.set(self.input_var.get()[:-1])
        else:
            self.input_var.set(self.input_var.get() + text)

if __name__ == '__main__':
    # 隱藏控制台視窗
    if sys.platform.startswith('win'):
        import ctypes
        ctypes.windll.user32.ShowWindow(ctypes.windll.kernel32.GetConsoleWindow(), 0)
    
    root = tk.Tk()
    root.configure(bg='black')
    calculator = Calculator(root)
    root.mainloop()
