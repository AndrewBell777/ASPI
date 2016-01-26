#!/usr/bin/env ruby


# CODE BIN
#
#
#
#
#

require 'active_support/core_ext/integer/inflections'
 
SYSTEM_NAME = 'ASPI'
VERSION = 'v0.0.2'
 
puts("Booting #{SYSTEM_NAME} #{VERSION}")
print("Please Identify Yourself: ")
name = gets.chomp 	# Takes the input from the user.
	if(name == "Andrew Bell")
		puts("Hello, #{name}")  # This is called "String Interpolation"
		puts("My name is #{SYSTEM_NAME}") 
		time1 = Time.now
		puts("The current time is: #{time1.strftime("%B #{time1.day.ordinalize} %Y")}")
		puts("What would you like to do now?")			
	elsif(name == "George Buckland")
		print "Hello George.\n \n \n"
		puts "I know how much you love Smash Mouth.... i put something in here for you."
		sleep 4		
		puts "Ah, here you go... :"
		puts File.read("./Shrek.txt")

			
	elsif(name == "Daniel Bell")
		puts "Hello Daniel!"
		puts "You are using #{SYSTEM_NAME}"
		puts "You are limited to what you can use as you do not have admin rights :p"
		puts "Gimme £5 and you can have them."
		sleep 3
		print "Anyway, what do you wanna do? \n"
	else print """
			----------------
				!ERROR!
			----------------
			!Unauthorized access detected!
			-
			-
			-
			-
			!Leave this system as it is not yours!
			----------------
			"""			
end
	input = gets.chomp
	
		if(input == "open")
				 print "What do you want to open?\n" 
				 openfile = $stdin.gets.chomp
				 txt = open(openfile)		
				 puts "Here is your file sir: #{openfile}"
				 print txt.read	 
		elsif(input == "write")
				 print "Please name your file:\n"
				 writefile = gets.chomp
				 target = open(writefile,'w+')
				 print "Please input message:\n"
				 write_doc = gets.chomp
				 puts "Shall I save?"
				 save = gets.chomp
		if(save == "y")
				target.write(write_doc)
				target.close
				print "Task complete."
					
		else(save == "n")
				print "File not saved"
	end
		elsif(input == "who are you?")	
				
				print "I am ASPI, Autistic Spectrum Parlance Interpreter.\n Though my name suggests I interpret the speech of Autistic people...\n I am really just a friend to an autistic person.\n"
				name_input_question = gets.chomp
		if(name_input_question == "whos that?")
				print "I could never tell you."
		else print "You are asking too much, lets talk about something else."
	end	
		elsif(input == "you da best")
			puts "#{name}...\n You are my creator. I am merely a program. \n\n\n\ Your the one who built all of this...\n You Da Best."
			
end	
