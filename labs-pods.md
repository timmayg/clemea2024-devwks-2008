# Labs & Pods

The lab network we will be working with looks like the diagram below. 

NOTE TO TIM:  Adjust this diagram to reflect the proper Gig & MGig Interface Names!!!

<img src="/images/network-diagram.png" alt="DEVWKS-2008 Network Diagram" width=600>


<ol>

<li> Use this table to determine what Pod you will work with. </li>


| Workstation #  | Pod IP Address  |
| -------------- | ----------- |
| Workstation #1  | 128.107.223.201   |
| Workstation #2  | 128.107.223.202   |
| Workstation #3  | 128.107.223.203   |
| Workstation #4  | 128.107.223.204   |
| Workstation #5  | 128.107.223.205   |
| Workstation #6  | 128.107.223.206   |
| Workstation #7  | 128.107.223.207   |
| Workstation #8  | 128.107.223.208   |
| Workstation #9  | 128.107.223.209   |
| Workstation #10  | 128.107.223.210   |
| Workstation #11  | 128.107.223.211   |
| Workstation #12  | 128.107.223.212   |
| Workstation #13  | 128.107.223.213   |
| Workstation #14  | 128.107.223.214   |
| Workstation #15  | 128.107.223.215   |
| Workstation #16  | 128.107.223.216   |
| Workstation #17  | 128.107.223.217   |
| Workstation #18  | 128.107.223.218   |
| Workstation #19  | 128.107.223.221   |
| Workstation #20  | 128.107.223.220   |


<li>Open 3 Terminal sessions on your workstation. </li>

<img src="/images/10-01-lab-workstation-web.png" alt="Fresh Lab Workstation" width=600>
<br><br>


<li>SSH to your Pod three (3) times, ADJUST the command below for your Pod ##!</li>

<code> ssh -p 3389 -l ciscolive IP-ADDR-TABLE-ABOVE </code>

SSH Username & Password for the Pod & the Cat9300 switches are all the same.
<br>
**User: ciscolive**
<br>
**Password: ciscolive123**
<br><br>


<li> The first SSH session will be used for managing Ansible and the files. </li>
We will need to change directories to the CLUS folder for this lab. <br>
<code> cd clemea2024-devwks-2008 </code>
<br><br>

<li> Assure you have the latest code & docs from Github!  </li>
<code> git pull </code>
<br><br>

<li> The second SSH session will be a jump box for you to get to the first Cat9300 switch. </li>

SSH Username & Password for the Pod & the Cat9300 switches are all the same.
<br>
**User: ciscolive**
<br>
**Password: ciscolive123**
<br>

<code> ssh 10.1.1.5 </code>
<br>

<li> The third SSH session will be a jump box for you to get to the second Cat9300 switch.</li>

<code> ssh 10.1.1.55 </code>



I arrange my SSH sessions like this for best viewing.   Adjust them for your own preferences. 

<img src="/images/10-02-lab-workstation-ssh-web.png" alt="3 SSH Sessiosn on Lab Workstation" width=600>


</ol>


[Click here to move on to the next section. Harden Services](/01-Harden_Services.md)




