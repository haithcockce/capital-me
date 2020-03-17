# Storyboarding 

### Defining likely workflow for use cases

##### Assumptions

* App is already installed and setup
* We do not yet have central login setup yet (a la Emby/Plex)

### Registration

##### Webui

1. Access webui from browser
2. Put in desired credentials
3. Check email for activation link 
4. Activation link takes person to account security page
5. Provide security question responses

* Ideas
  * touchid/faceid/2 factor auth with email/number? 
  * PIN? 
  
##### API 

1. curl with email and password. 

* Need to hash this. Maybe API can have client shell that does this for you?

### Reset Password

##### Webui

1. Access webui and select "Forgot password?"
2. Enter email
3. Answer security questions
4. Set new password on success
5. On password change success, force logout and relogin 

### Create/Import Account

##### Webui

1. Login to webui
2. On main page, select --> "Create/Import Account"
3. Enter account details
  3.a Type (investment, savings, checkings, etc)
  3.b Current balance
  3.c APY/APR
  3.d Statement date
  3.e compound amount and frequency
4. Ask to enter another or submit and go to main page

* Ideas
  * Plaid bank API to import 
  * Keep manual creation in case it's preferred

### Add Transactions

##### Webui

1. Login
2. On main page, select --> "New Money Move" (have quick access too like a (+) button somewhere)
3. Enter details
  3.a Amount
  3.b Type (incoming/outgoing/transfer)
  3.c Source and/or Destination
    - SRC/DEST can but don't need to be owned accounts
  3.d Split across accounts? and which ones? 
  3.e Recurring? What dates/frequency/period/etc
  3.f Reminders? email for now
4. Submit or submit and create a new one

* Ideas
  - Quick entry? Maybe have basic entry and only on authorized systems 

### Modify/Delete Transactions

1. Login
2. Select Accounts and Transactions tab (if not default)
3. Select 'Transactions' > Select transaction (sorted by date)
  3.a Have transactions and account details side by side on desktop
4. Same form to create a new transaction but prefilled with selected transaction details
5. Modify and submit or select Delete
  5.a Confirm delete

* Ideas, keep track of removed transactions elsewhere so it doesn't effect account but may need to revisit them

WIP WIP WIP WIP WIP
