Michael W. Schultz | ENEE440 - Spring 2013 | Dr. Hawkins | Final Project HEARm
mschult2@terpmail.umd.edu

Summary: 
	It's the HEARm synthesizer!  Clean with clean_project.bat, compile with make_project.bat, and load with Keil uVision or whatever you use. Or, don't do any of that because the code is already compiled and loaded on the board.Also, be sure to read the design report, the testing procedure, and the user's manual.
	All hardware interaction has been programmed in assembly, as instructed!  The project
specification is included (440S13_PROJECT_v01.pdf), so that you can verify I met all the bullet points.  I did not
do the extra credit (which means I didn't synethesize tones, because that was moved to
extra credit).
	Please feel free to email me if you have any questions at mschult2@terpmail.umd.edu.
Let me know if you want to see the board and test it out, I'm at AVW everyday all day.


DesignReport_final.pdf: The design report for this HEARm project.

testingProcedure.pdf: The testing procedure.  My webcam wasn't working so I couldn't
record a video...

usersManual.pdf: The user's manual.

STM32F4main04.c : Contains the main function. There is some preliminary setup, and then an infinite loop for sampling switches and performing the consequent logic

mikes_project_functions.asm: Contains the assembly functions.  

make_project.bat: builds project (already built!)

clean_project.bat: cleans project 

KeilSimulatorDebugMap_ATM32F4_01.ini : map needed by Keil simulator to permit simulated access to certain regions of address space 
