# Configure a Common Criteria Policy and Local Users 

Your Active Directory enforces password compliance. Your IOS XE box can too!

IOS XE supports Common Criteria Policies that allow Network Engineers to configure options such as minimum and maximum password lengths, max number of times a character can be consecutively repeated, and force use of upper, lower, numeric, and special characters. 
<br><br>
In this task, we will view and run a playbook that will create a Common Criteria Policy and a local user with a compliant password. 

## Create a Common Criteria Policy Based on Business Requirements

<ol>

<li>View the Playbook that will Create the Common Criteria Policy</li>
<br>
<code>cat playbooks/02a-add-common-criteria-policy.yaml</code>
<br><br>
<img src="/images/02-01-cat-common-criteria-playbook-web.png" alt="" width=600>
<br><br><br>

<li>Run the Playbook that will Create the Common Criteria Policy </li>
<br>
<code>ansible-playbook -i inventories/devnet-switches.yaml playbooks/02a-add-common-criteria-policy.yaml --ask-vault-pass</code>
<br><br>
<img src="/images/02-02-playbook-output-common-criteria-web.png" alt="" width=600>
<br><br><br>

<li>View the Common Criterial Policy on the Switch </li>
<br>
<code>show runn | sec aaa common-criteria</code>
<br><br>
<img src="/images/02-03-show-run-common-criteria-web.png" alt="" width=600>
<br><br><br>

## Create a Local User, with Priv 15, whose password complies with Common Criteria 

<li>View the Playbook that will Create the IOS XE Local User </li>
<br>
<code>cat playbooks/02b-add-common-criteria-users.yaml</code>
<br><br>
<img src="/images/02-04-cat-local-user-web.png" alt="" width=600>
<br><br><br>


<li>Run the Playbook that will Create the IOS XE Local User </li>
<br>
<code>ansible-playbook -i inventories/devnet-switches.yaml playbooks/02b-add-common-criteria-users.yaml --ask-vault-pass</code>
<br><br>
<img src="/images/02-05-playbook-output-local-user-web.png" alt="" width=600>
<br><br><br>

<li>View the Local User </li>
Notice how some users need to have the Common Criteria applied and that the one we just created does have it applied. 
<br>
<code>show runn | inc username jhonny</code>
<br><br>
<img src="/images/02-06-show-username-jhonny-web.png" alt="" width=600>
<br><br><br>

<li>View the Playbook that will Configure Login Block  </li>
<br>
<code>cat playbooks/02c-config-login-block.yaml</code>
<br><br>
<img src="/images/02-07-cat-login-block-web.png" alt="" width=600>
<br><br><br>

<li>Run the Playbook that will Configure Login Block </li>
<br>
<code>ansible-playbook -i inventories/devnet-switches.yaml playbooks/02c-config-login-block.yaml --ask-vault-pass</code>
<br><br>
<img src="/images/02-08-playbook-output-login-block-web.png" alt="" width=600>
<br><br><br>

<li>View the Login Block Configuration  </li>
<br>
<code>sh runn | inc login block</code>
<br><br>
<code>sh runn | inc login on</code>
<br><br>
<img src="/images/02-09-show-run-login-block-web.png" alt="" width=600>
<br><br><br>

</ol>

[Click here to move on to the next section. Configuring Type 6 Password Encryption. ](/03-Type6_Passwords.md)
