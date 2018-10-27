#!/bin/bash

# Check ROOT #
if [[ "$(id -u)" -ne 0 ]]; then
   printf "\e[1;31m[!]\e[0;31m Error: Please Run This File As ROOT !\n"
   exit 1
fi

# Check If GCC Is Exist #
if [[ ! -f /usr/bin/gcc ]]
   then
      printf "\n\e[1;31m[!] \e[0;33m [\e[1;33mGcc\e[0;33m]\e[1;33m Is Not Exist \e[1;31m !!!\n"
      printf "\n\e[1;33m[?] \e[1;32mDo You Want To Install It:\e[1;36m[Y:n]:>\e[1;31m "
      read ask
      while [[ $ask == "" ]]
      do
        printf "\n\e[1;31m[!] \e[1;32mDo You Want To Install It:\e[1;36m[Y:n]:>\e[1;31m "
        read ask
      done
      if [[ $ask == "y" || $ask == "Y" ]]
         then
            wget -q --spider https://www.google.com
            if [[ $? == "0" ]]
               then
                  printf "\n\e[1;32m[*]\e[0;32m Installing.....\e[1;31m[Gcc]\n"
		  sleep 1.5
                  apt-get -y update && apt-get -y install gcc
                  if [[ -f /usr/bin/gcc ]]
                     then
                        printf "\n\e[1;32m[>] Done! \e[1;33m[gcc]\e[1;32m Is Installed Now\e[1;33m :)"
			printf "\n\e[1;32m[\e[0;32m~\e[1;32m]\e[0;32m Compiling[ddos.c] ...\e[1;37m gcc ddos.c -o ddosar"
			sleep 1
			gcc ddos.c -o ddosar
			printf "\n\e[1;32m[\e[1;37m+\e[1;32m] \e[1;37mDone \e[1;32m:)"
                        printf "\n\e[1;34m[*] Run Script Now\e[1;31m....."
                        sleep 1.5
			printf "\e[1;32m Welcome :)\n\n\e[1;37m"
			sleep 0.60
			./ddosar
                  else
                       printf "\n\e[1;31m[!]\e[0;31m[ERROR]\e[1;33m Something Went Wrong \e[0;31m !!!"
                       printf "\n\e[1;32m[*]\e[0;32m Please Install Gcc Manually Using This Command:>\e[1;36m apt-get -y update && apt-get -y install gcc \n"
		       exit 1
		  fi
            else
	        printf "\n\e[1;31m[!]\e[0;31m[ERROR]> \e[1;33m Your Not Connected To Internet \e[1;31m !!!\n"
		printf "\e[1;32m[*]\e[0;32m Please Connect To Internet And Try Again \e[1;32m :)\n"
		exit 1
	    fi
      else
	 printf "\n\e[1;31m[!]\e[1;33m Ok But You Must Install\e[1;34m [Gcc]\e[1;33m For Compile\e[1;34m[ddos.c]\e[1;33m File..."
	 sleep 0.60
	 printf '\e[1;31m Bye \e[1;32m:)\n'
	 exit 1
      fi
else
 printf "\n\e[1;32m[\e[0;32m~\e[1;32m]\e[0;32m Compiling[\e[1;37mddos.c\e[0;32m]\e[1;32m ...\e[1;37m gcc ddos.c -o ddosar"
 sleep 1
 gcc ddos.c -o ddosar
 printf "\n\e[1;32m[\e[1;37m+\e[1;32m] \e[1;37mDone \e[1;32m:)"
 printf "\n\e[1;34m[*] Run Script Now\e[1;31m....."
 sleep 1.5
 printf "\e[1;32m Welcome :)\n\n\e[1;37m"
 sleep 0.60
 ./ddosar
fi
