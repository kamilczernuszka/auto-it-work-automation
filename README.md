# auto-it-work-automation

This repository contains several programs:

## Calculator Program

- Program File: `calculator.au3`
- Description: After launching the `calculator.au3` program, the program interface will appear. You can perform addition by pressing the "+" button, subtraction by clicking "-", multiplication by clicking "*", and division by clicking "/". Before pressing any of the four buttons, you must fill in the two empty white fields with numbers. Enter the first number, then the second number, and select one of the four buttons. The result of the operation will be displayed in the "Result:" field.

## Opening Program

- Program File: `openingprograms.au3`
- Description: When you run `openingprograms.au3`, it launches several applications including Calculator (`calc.exe`), Paint (`mspaint.exe`), Notepad (`notepad.exe`), and Control Panel (`control.exe`).

## Browser Program

- Program File: `browser.au3`
- Description: After starting the `browser.au3` program, there is a "Go to the indicated address" button on the website. By entering the address `www.gmail.com` in the empty white field at the bottom of the program and pressing "Go to the indicated address," the program closes.

## Extended Browser Program

- Program File: `extendedbrowser.au3`
- Description: The `extendedbrowser.au3` program has additional buttons compared to the Browser program:
  - Back button: allows you to go back to the previously opened page
  - Forward button: allows you to go to the next enabled page
  - Home button: redirects the page to the home page
  - Stop button: stops the page process
  - Print button: opens the printer dialog
  - Save As button: opens a dialog for saving the current page to a file.

## Browser with Copy Program

- Program File: `browserwithcopy.au3`
- Description: The `browserwithcopy.au3` program contains a "Save to txt" button. When pressed, the content of the selected fragment of the website will be copied to Notepad. The Notepad will display the following inscription before the fragment: "This fragment was downloaded from the page:''", followed by the website address, date, and time. The selected text will be pasted, and the file will be saved under the name "text_". The save number will be added after the "_" character, and with each save, this number increases by 1 (e.g., "text_1", "text_2", etc.).

## Getting Started

To get started with this project, follow these steps:
1. Clone the repository.
2. Open the any file using AutoIt or any other compatible environment.
3. Press F5 to run the script.
   
## License

This project is licensed under the [MIT License](LICENSE).

You are free to use, modify, and distribute this project as needed.
