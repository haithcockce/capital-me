# Goals 

- Refresh myself on different frameworks while building a personal financing webapp. 

# What Should Capital Me Do? 

- Manually track money movement
  - Transfers
  - Withdrawals
  - Deposits
  - Investments
  - Dividends 
  - Credit cards
  - List money moves
  - update money moves

- Manage accounts
  - Recurring money movement
  - APY/APR
    - amount (percentage/or flat rate)
    - frequency
  - fees
    - amount (percentage or flat rate)
    - frequency
  - Automagic? (With like Plaid or whatever)
    
- Budgeting
  - Categories (and sub categories? up to 5 levels in sub categories?)
  - Budgeted amounts
  - Reported amounts within transfers
  
- A Money Move should have the following details
  - * Net growth, loss, just transfer (IE gives you money, takes away money, move money between accounts/investments) 
  - * Quantity
  - * IOU? (is this paid with a cc/loan/etc and will be paid off later?)
  - Source (From which account? From who?)
  - Destination (Into which account? To whom or what establishment?)
  - Category
  - date when it will/did happen
  - Recurring

- Insights and Projections
  - GRAPHS AND CHARTS
  - Insights: slice and dice the current numbers
    - amount spent across accounts and/or categories/subcategories (for example, if an expense is labeled as Groceries from Account A, report that once in insights when looking for details on expenses listed Groceries and Account A)
    - Arbitrary time frame
    - Frequencies (A money move in account/category)
    - Distributions (Arbitrarily defined, so categories and sub categories, accounts, etc)
  - Projections
    - Expected money moves and amounts on a particular day (both day of week and day of month)
    - Expected growth (in savings and debt) given APY and currently set recurring transactions (look up the formula for this!)

- Extra tooling 
  - Export to CSV
  - Market trends? 
  - Stock watchers? 
  - Web scraping for news on stocks? 
  
# Potential Infrastructure

- Containerized
  - Podman/Buildah for creating/managing container images and containers
  - crio-o for container runtime
- MVC
  - Model: postgresql
  - View: Angular (since most activity is on a single page at a time) maybe React when we add metrics? 
    - Coupled with uikit for css framework
  - Controller: django


# Implementation 

- Build API first so we can just use it to 
