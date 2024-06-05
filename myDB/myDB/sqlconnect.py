# importing required libraries

import mysql.connector

# Establishing a connection to the local host by entering a valid username and password

database = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="password123",
  database="BANK2"
)

# preparing a cursor object
cursor = database.cursor()

# Creating table
#cursor.execute("CREATE TABLE CLIENT (ssn VARCHAR(11) PRIMARY KEY, Fname VARCHAR(50), Lname VARCHAR(50), DOB DATE, email VARCHAR(50), phone int, street VARCHAR(255), city VARCHAR(255), state VARCHAR(255))")
#cursor.execute("CREATE TABLE BANK_ACCOUNT (acc_no VARCHAR(255) PRIMARY KEY, acc_type VARCHAR(20), ssn VARCHAR(11), balance int, FOREIGN KEY (ssn) REFERENCES CLIENT(ssn))")
#cursor.execute("CREATE TABLE TRANSACTION (trans_id double PRIMARY KEY, trans_date date, amount int, type VARCHAR(20), ssn VARCHAR(11), from_acc VARCHAR(255), to_acc VARCHAR(255), FOREIGN KEY (ssn) REFERENCES CLIENT(ssn))")
#cursor.execute("CREATE TABLE SAVINGS (acc_no VARCHAR(255) PRIMARY KEY, withdrawal_limit int, fee int, FOREIGN KEY (acc_no) REFERENCES BANK_ACCOUNT(acc_no))")
#cursor.execute("CREATE TABLE CHECKING (acc_no VARCHAR(255) PRIMARY KEY, withdrawal_limit double, fee double, FOREIGN KEY (acc_no) REFERENCES BANK_ACCOUNT(acc_no))")
#cursor.execute("CREATE TABLE FROM_OR_TO (index1 int PRIMARY KEY, trans_id double, acc_no VARCHAR(255), FOREIGN KEY (trans_id) REFERENCES TRANSACTION(trans_id), FOREIGN KEY (acc_no) REFERENCES BANK_ACCOUNT(acc_no))")
#cursor.execute("CREATE TABLE BANK (branch_no double PRIMARY KEY, timings VARCHAR(255), street VARCHAR(255), city VARCHAR(255), state VARCHAR(255))")
#cursor.execute("CREATE TABLE CASH_INVESTMENT (receipt double PRIMARY KEY, inv_date date, amt_inv double, rate_offered float, trans_id double, FOREIGN KEY (trans_id) REFERENCES TRANSACTION(trans_id))")
#cursor.execute("CREATE TABLE LOAN (loan_id double PRIMARY KEY, loan_amt double, payment_period VARCHAR(20), comp_period VARCHAR(20), branch_no double, loan_date date, apr float, trans_id double, FOREIGN KEY (trans_id) REFERENCES TRANSACTION(trans_id), FOREIGN KEY (branch_no) REFERENCES BANK(branch_no))")
#cursor.execute("CREATE TABLE BOND (coupon_no double PRIMARY KEY, coupon_val double, face_val double, coupon_rate float, bond_price double, maturity int, ytm float, issue_date date, trans_id double, FOREIGN KEY (trans_id) REFERENCES TRANSACTION(trans_id))")
#cursor.execute("CREATE TABLE MONEY_VALUE (mv_id double PRIMARY KEY, inflation float, tax_rate float, ssn VARCHAR(11), FOREIGN KEY (ssn) REFERENCES CLIENT(ssn))")
#cursor.execute("CREATE TABLE CARD (card_no VARCHAR(25) PRIMARY KEY, active_status VARCHAR(15), branch_no double, ssn VARCHAR(11), FOREIGN KEY (branch_no) REFERENCES BANK(branch_no))")
#cursor.execute("CREATE TABLE CREDIT (card_no VARCHAR(25) PRIMARY KEY, card_rate float, pay_deadline date, fine_due float, exp_date date, cvv int, Fname VARCHAR(50), Lname VARCHAR(50), FOREIGN KEY (card_no) REFERENCES CARD(card_no))")
#cursor.execute("CREATE TABLE DEBIT (card_no VARCHAR(25) PRIMARY KEY, exp_date date, cvv int, rem_balance float, Fname VARCHAR(50), Lname VARCHAR(50), FOREIGN KEY (card_no) REFERENCES CARD(card_no))")
#cursor.execute("CREATE TABLE ISSUES (index2 int PRIMARY KEY, coupon_no double, branch_no double, FOREIGN KEY (coupon_no) REFERENCES BOND(coupon_no), FOREIGN KEY (branch_no) REFERENCES BANK(branch_no))")


cursor.execute("UPDATE TRANSACTION SET from_acc = '0279-6808-0475-7018' WHERE from_acc = '8917-6720-3179-2909'")


database.commit()

# disconnecting from server
database.close()
