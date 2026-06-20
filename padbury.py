import tkinter as tk
from datetime import datetime

root = tk.Tk()
root.configure(bg="#000000")
root.attributes("-fullscreen", True)
root.config(cursor="none")

label = tk.Label(
    root,
    fg="#e5e5e5",
    bg="#000000",
    font=("Montserrat ExtraLight", 130)
)
label.pack(expand=True)

def update():
    now = datetime.now().strftime("%H%M%S")

    # 02 14 57
    text = f"{now[:2]} {now[2:4]} {now[4:]}"

    label.config(text=text)
    root.after(1000, update)

update()

root.bind("<Escape>", lambda e: root.destroy())
root.bind("<Key>", lambda e: root.destroy())
root.bind("<Button>", lambda e: root.destroy())
root.bind("<Motion>", lambda e: root.destroy())

root.mainloop()
