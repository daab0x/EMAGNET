![Screenshot](https://nr1.nu/archive/images/emagnet.png)

## _"I'll will find you, it's just a matter of time"_

#### I cannot be responsible for the user's actions regardless of what damage a user can achieve with the information/data emagnet might collect for any user(s).All users who are using emagnet for gathering or store information/data is 100% responsible for their own actions, emagnet has been developed for a legal purpose.

## README

Emagnet is a very powerful tool for it's purpose wich is to capture email addresses and especially leaked databases upoloaded on pastebin since it's almost impossible to find them when they are out of latest top 10 list on https://pastebin.com. Either they have been deleted by pastebin's techs or the upload is just one in the crowd. To be honest it's easier to find a needle in a haystack then find outdated uploads on pastebin with the data we want to collect - Emagnet runs fine on all distros and even runs fine on windows aslong aslong the required packages is installed(curl, lynx and wget is required)

- Tired of brute forcing accounts wich takes a long time almost every time?
- Tired of using illegal methods for find passwords or leaked accounts?
- Tired of using phising methods that will give you 1-2 accounts if it's your lucky day?
- Tired of searching for leaked databases via google were mostly dbs is very old?
- Tired of tools from github wich trying to fetch passwords with a bad result? (compare with emagnet)
- Tired of all nerds that running forums and want makes $$ from the real hackers?

#### If you answered YES on all questions above you probably will enjoy emagnet.

##### The video below is the result after running emagnet in 7minutes and 32 seconds, let emagnet do the job for you in background. It's leaked emails + plain text password I searching for in the video mail:password. 

![Screenshot](_/emagnet-leakedpws.gif)

#### Here is a nice proof how many emails you can grab in ~10-20 seconds.

![Screenshot](_/emagnet.gif)                

##### Clone users entire repo on github, anonymous or not, you decide..

![Screenshot](_/emagnet-clone.gif)

##### Download all URLS from any website..

![Screenshot](_/emagnet-spider.gif)

##### Mirror almost everything from any website: 

![Screenshot](_/emagnet-mirror.gif)

### CHANGELOG 

##### Version 1.4

-   I decided to split everything into small scripts instead since it's alot easier to troubleshoot if something goes wrong, you wont notice any difference at all, run 'emagnet' to execute them, 
    there is no  reason to run any of the scripts from .scripts dir, listing the new ones only:

    .scripts/emagnet-backup.sh

    .scripts/emagnet-banner.sh

    .scripts/emagnet-clone.sh

    .scripts/emagnet-debug.sh

    .scripts/emagnet-f.sh

    .scripts/emagnet-help.sh

    .scripts/emagnet-hidden.sh

    .scripts/emagnet-main.sh

    .scripts/emagnet-mirror.sh

    .scirpts/emagnet-ping.sh

    .scripts/emagnet-requirements.sh

    .scripts/emagnet-spider.sh


-   Added .scripts/emagnet-ping.sh - Enter a dns and emagnet will check via downforjustyou website if host is up
    and for ipv4 number ip addressed emagnet gonna use '/bin/ping' instead for get a valid result very very fast if the ip-address is up or down.

-   It's now possible to use emagnet for upload from stdout from commandline, example usage: 'dmesg | emagnet -n'. Host does NOT store any ip number or other data about users at all.

-   Silent mode, download all urls and store them in background, you can go cook a cup of coffe instead! 

-   Small fixes

-   Mirror any website and download everything that is possible from the website(try mirror facebook, (EXTREMELY MUCH DATA =))

-   Gather all urls from a webpage, this is meant to be a web crawler.

-   It's now possible to clone all repos from any user on github.

##### Version 1.3

-   Emagnet will notice if you getting ip-banned from pastebin and then emagnet will stop and after X minutes emagnet will continue.

-   Small fixes

-   .scripts/emagnet-f.sh is a loop script, there i no reason for touch this, run emagnet -f to execute it.

-   Now execute setup.sh to setup everything before you will run emagnet. There is no requirements for edit 
    /etc/emagnet.conf anymore, just run emagnet-setup.sh and then you will be able to run emagnet.

-   Debug mode has been enable, use debug mode with arg: -d 

##### Version: 1.2


-   Set your paths in /etc/emagnet.conf. There is no need for change stuff in 'emagnet' anymore.
 
-   Now emagnet store all files from pastebin so you can go through them later if you wanna find something offline without any stress..

-   More efficient logging to keep things sorted, all uploaded files that includes email addresses will be stored in it's own folder so it's easy to find passwords and mail addresses.

-   Added getopts, from now you must use -o, -h or -f to run emagnet.

-   Help section was added.

-   Paths need to be properly set in /etc/magnet.conf otherwise emagnet wont run (no more files in emagnet folder ;))

-   If pastebin has banned the current IP beccause you was an idiot and was trying to fetch uploads every <10s then emagnet will stop (just change ip)

-   Mirror any site and download all files that is possible from a website

# Tips & Tricks

In the folder you will store all downloads from pastebin uploads you can search for almost anything, let me provide some examples.

## Facebook Leaks
#### Facebook Passwords are many times uploaded with phone numbers instead of an mail address and there is alot of leaks from east, for find those passwords fast you can try something like below command for a good result:
 
    grep -r -e 'Facebook = [0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' -A2

#### _Output From Above Command:_
   
    /emagnet/pastebin/ajfafilename:Email Facebook = 0895xxxxxxxx
    /emagnet/pastebin/ajfafilename-Pass = konxxxxxxxx
    /emagnet/pastebin/ajfafilename:Email Facebook = 0858xxxxxxxx
    /emagnet/pastebin/ajfafilename-Pass = mxxxxxxxx
    /emagnet/pastebin/ajfafilename:Email Facebook = 0895xxxxxxxx
    /emagnet/pastebin/ajfafilename-Pass = taxxxxxxxx
    /emagnet/pastebin/ajfafilename:Email Facebook = 0823xxxxxxxx
    /emagnet/pastebin/ajfafilename-Pass = oxxxxxxxx
    /emagnet/pastebin/ajfafilename:Email Facebook = 0818xxxxxxxx
    /emagnet/pastebin/ajfafilename-Pass = d1xxxxxxxx
 
## IPV4 Addresses
#### If you are an uber hacker that loves to bruteforce rdp, ssh and other protcols you probably wanna get some new ipv4 addresses for your database - Then below command is something you may wanna try: (i wont leak any ipv4 addresses. Uploaders on pastebin already doing that job for us so I have decided to change all filenames with sed and also remove first part of all ipv4 number so it cant be traced back to me cause my preview. Below is an example how we can grab million of ipv4 addresses in 10 seconds) - Have fun with emagnet:  

![Screenshots](https://nr1.nu/archive/images/ipv4-preview.gif)
  
    grep -roE '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' . 

 
## HTTP/HTTPS URLS
#### There is alot of FTPS and other stuff that people sharing to friends via pastebin(crazy i know) and for find all these you can try some of my examples below: 

#### _Example 1:_
    grep -rEo '(ftp|ftps|http|https)://[^/"]+'

#### _Example 2:_
    grep -Eo "(ftp|ftps|http|https)://[a-zA-Z0-9./?=_-]*" | sort | uniq

#### _Example 3:_
    cat * | tr \" \\n | grep https\*://

#### _Example 4 - > For find urls on darknet, use below command:_

    grep -rEo '.*[.]onion$

#### _Output from the first example from command above_

    filename:https://www.beachcolony.com
    filename:http://java.sun.com
    filename:http://www.w3.org
    filename:https://br1.api.riotgames.com
    filename:https://github.com
    filename:http://openocd.org
    Ddfadfae:https://www.googletagservices.com
    filenamw:https://www.googletagservices.com
    filename:ftp://111.111.111:3200
    filename:http://www.pornbb.org
    filename:http://www.pornbb.org
    filename:http://www.pornbb.org
    .............

## Find all kind of wierd pictures people have uploaded on pastebin, just change jpg/png to gif and other file extension if you wanna find more:

    filename:http://imag-some-site-ekle.com/1/0/v6/hiddenimagevywusewman.jpg
    filename:http://images-some-site.com/1/w/4m/hiddenimagevywusewman.jpg
    filename:http://imagessome-sitele.com/1/5/8l/yhiddenimagevywusewman.png
    filename:http://imsome-sitees-brsome-siteacklesome-sitem/1/0/16/hiddenimagevywusewman.jpg

    grep -rioE '(http|https)://(.*).png' # PNG FILES
    grep -rioE '(http|https)://(.*).jpg' # JPG FILES
    egrep -rio 'http.*[.]jpe?g'


## Find Leaked Passwords:
#### Mostly leaked passwords has been leaked with the following format 'mail@mail.com:passwd', use below command to grab them:

    grep -HiEhr -o -e "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b:...*" | grep '\S'

    hiddenemail_ani@uniroma1.it:hiddenPASS985
    hiddenemail_le@unito.it:hiddenPASSina
    hiddenemail_1969@libero.it:hiddenPASSro60 
    hiddenemail_o.barbarella@unibo.it:hiddenPASSRZ47
    hiddenemail_ritis@ingv.it:hiddenPASScde
    hiddenemail_ia@polito.it:hiddenPASSrmia
    hiddenemail_i@unifi.it:hiddenPASSudal
    hiddenemail_ti@uniba.it:hiddenPASSino
    hiddenemail_one@tin.it:hiddenPASSton
    hiddenemail_olombo11@virgilio.it:hiddenPASSiglio
    hiddenemail_ciwilliam@libero.it:hiddenPASS0780
    hiddenemail_dro.chelli@unipr.it:vhiddenPASSina

#### HOW TO USE EMAGNET

    You can copy and paste below code in your shell 

    git clone https://github.com/wuseman/EMAGNET
    cd EMAGNET 
    bash ./setup.sh
    bash emagnet -f

#### REQUIREMENTS

    A linux setup would be good, emagnet has been tried on Gentoo Linux only ;)

#### CONTACT 

    If you have problems, questions, ideas or suggestions please contact me: wuseman@nr1.nu

#### WEB SITE

     Visit our homepage for the latest info and updated tools:

     https://nr1.nu & https://github.com/wuseman/

#### END!




