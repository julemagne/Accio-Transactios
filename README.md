# Accio Transactios

Program that tracks credits and debits of your debit account. Creates an ActiveRecord database that tracks name of person/place where you spent your money and amount of the transaction. Credits are positive numbers and debits are negative numbers.

## The Home Page

The home page will display:

* the total amount of money in the account
* the total number of transactios ever
* a link to the list of transactios
* a link to create a new transactio

The page will also reprimand the user if the balance in the account is negative.

### Set up

Rails scaffold was used to set up ActiveRecord.  

### How to Use

You can follow links by clicking them. You can create transactios by fully filling in and submitting the form. You can create, edit, and delete transactios.
