#!/bin/bash
Horizontal="---------------------------------------------------------"
echo -e "\n\n$Horizontal"
echo "                COVID-19  checking system"
echo "$Horizontal"
read -p "Enter your nickname: " name
	if [ -z $name ]; then
	echo "Please enter your nickname"
	read -p "Enter your nickname: " name2
		if [ -n $name2 ]; then
		echo "Hello $name2"
		fi
	elif [ -n $name ]; then
	echo "Hello $name"
	fi
read -p "Enter your age: " age
	if [ -z $age ];then
	echo "Please enter your age"
	read -p "Enter your age: " age2
		if [ $age2 -lt 0 ] | [ $age2 -gt 122 ]; then
		echo "Please enter your real age"
		read -p "Enter your age: " age3
			if [ -n $age3 ]; then
			echo "Your age is $age3 years old"
			fi
		elif [ -n $age2 ]; then
		echo "Your age is $age2 years old"
		fi
	elif [ $age -lt 0 ] | [ $age -gt 122 ]; then
	echo "Please enter your real age"
	read -p "Enter your age: " age2
		if [ -n $age2 ]; then
		echo "Your age is $age2 years old"
		fi
	elif [ -n $age ]; then
	echo "Your age is $age years old"
	fi
Line="***********************************************************"
echo -e "\n$Line"
echo "Select your gender by the following choice"
echo "1) Male"
echo "2) Female"
echo "3) Not identify"
echo "$Line" 
read -p "Type the option you select : " choice
	if [ $choice -lt 1 ] | [ $choice -gt 3 ]; then
	echo "**** Enter the number between 1 and 3 ****"
	elif [ $choice -eq 1 ]; then
	echo "You are Male"
	elif [ $choice -eq 2 ]; then
	echo "You are female"
	elif [ $choice -eq 3 ]; then
	echo "Not identify gender but it's ok ^_^"
	fi
echo -e "\n$Line"
echo "          This is a list of risk countries"
echo "1) United State of America"
echo "2) Spain"
echo "3) Italy"
echo "4) France"
echo "5) Germany"
echo "6) United Kingdom"
echo "7) China"
echo "8) Iran"
echo "9) Turkey"
echo "10) Belgium"
echo "11) Netherlands"
echo "12) Switzerland"
echo "13) Canada"
echo "14) Brazil"
echo "15) None of above"
echo "$Line"
echo -e "\nWhere have you been in the last 14 days?"
Star="***"
read -p "Select the option above: " country
		if [ $country -lt 1 ] | [ $country -gt 15 ]; then
		echo "Please enter a number between 1 to 15"
		elif [ $country -gt 1 ] | [ $country -lt 15 ]; then
		echo "Checking your body temperature ...."
			read -p "Enter your body temperature that show on the screen: " tem
				if [ $tem -lt 30 ] | [ $tem -gt 50 ]; then
				echo "Insert your real body temperature"
				read -p "Enter your body temperature that show on the screen: " tem2
				echo "Your body temperature is $tem2 degree celsius"
					if [ $tem2 -gt 37 ]; then
					echo "Please wait and answer the next question"
					echo "Do you have fever, sore throat, or cough?"
					echo "1) Yes"
					echo "2) No"
					read -p "Select the option above: " fever
						if [ $ferver -lt 1 ] | [ $fever -gt 2 ]; then
						echo "Enter the number 1) or 2)"
						read -p "Select the option above: " fever2
						echo "You select $fever2"
							if [ $fever2 = 1 ]; then
							echo "$Star The result:"
							echo "Please go to see a doctor right away!! You are at risk of Covid-19"
							elif [ $fever2 = 2 ]; then
							echo "$StarThe result:"
							echo "Congratulation! You are free from Covid-19 but please stay at home for your safety"
							fi
						elif [ $fever -eq 1 ]; then
						echo "$Star The result:"
						echo "Please go to see a doctor right away!! You are at risk of Covid-19"
						elif [ $fever -eq 2 ]; then
						echo "$Star The result:"
						echo "Congratulation! You are free from Covid-19 but please stay at home for your safety"
						fi
					elif [ $tem2 -lt 37 ]; then
					echo "$Star The result:"
					echo "Congratulation! You are free from Covid-19 but please stay at home for your safety"
					fi
				elif [ $tem -gt 30 ] | [ $tem -lt 50 ]; then
				echo "Your body temperature is $tem degree celcius"
					if [ $tem -gt 37 ]; then
					echo "Please wait and answer the next question"
					echo "Do you have fever, sore throat, or cough?"
					echo "1) Yes"
					echo "2) No"
					read -p "Select the option above: " fever
						if [ $fever -lt 1 ] | [ $fever -gt 2 ]; then
						echo "Enter the number 1) or 2)"
						read -p "Select the option above: " fever2
						echo "You select $fever2"
							if [ $fever2 = 1 ]; then
							echo "$Star The result:"
							echo "Please go to see a doctor right away!! You are at risk of Covid-19"
							elif [ $fever2 = 2 ]; then
							echo "$Star The result:"
							echo "Congratulation! You are free from Covid-19 but please stay at home for your safety"
							fi
						elif [ $fever -eq 1 ]; then
						echo "$Star The result:"
						echo "Please go to see a doctor right away!! You are at risk of Covid-19"
						elif [ $fever -eq 2 ]; then
						echo "$Star The result:"
						echo "Congratulation! You are free from Covid-19 but please stay at home for your safety"
						fi
					elif [ $tem -lt 37 ]; then
					echo "$Star The result"
					echo "Congratulation! You are free from Covid-19 but please stay at home for your safety"
					fi
				fi
			elif [ $country -eq 15 ]; then
			echo "$Star The result:"
			echo "Congratulation! You are free from Covid-19 but please stay at home for your safety"
			fi
exit  0
