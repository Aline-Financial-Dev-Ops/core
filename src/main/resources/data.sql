/* Populate Database with base data */
INSERT IGNORE INTO bank (id, address, city, state, zipcode, routing_number)
VALUES (1, '123 Aline Financial St.', 'New York', 'New York', '10001', '123456789');

INSERT IGNORE INTO branch (id, name, phone, address, city, state, zipcode, bank_id)
VALUES (1, 'Main Branch', '(800) 123-4567', '123 Aline Financial St.', 'New York', 'New York', '10001', 1);

INSERT IGNORE INTO merchant (code, name)
VALUES ('ALINE', 'Aline Financial');

INSERT IGNORE INTO merchant (code, name)
VALUES ('NONE', 'None');

INSERT IGNORE INTO card_issuer (issuer_name, card_number_length)
VALUES ('VISA', 16);

INSERT IGNORE INTO card_issuer (issuer_name, card_number_length)
VALUES ('MASTERCARD', 16);

INSERT IGNORE INTO card_issuer (issuer_name, card_number_length)
VALUES ('DISCOVER', 16);

INSERT IGNORE INTO card_issuer (issuer_name, card_number_length)
VALUES ('AMEX', 16);

INSERT IGNORE INTO credit_card_offer (amount, offer_name, description, card_issuer_name, credit_line_type, min_apr, max_apr, min_payment)
VALUES (500000, 'Aline Standard', 'Standard credit card.', 'VISA', 'STANDARD', 10.5, 24.99, 25);

INSERT IGNORE INTO credit_card_offer (amount, offer_name, description, card_issuer_name, credit_line_type, min_apr, max_apr, min_payment)
VALUES (250000, 'Aline Student', 'Student credit card.', 'DISCOVER', 'STUDENT', 10.5, 16.99, 25);

INSERT IGNORE INTO credit_card_offer (amount, offer_name, description, card_issuer_name, credit_line_type, min_apr, max_apr, min_payment)
VALUES (800000, 'Aline Air', 'Airline credit card.', 'AMEX', 'AIRLINE', 9.5, 12.99, 25);

INSERT IGNORE INTO credit_card_offer (amount, offer_name, description, card_issuer_name, credit_line_type, min_apr, max_apr, min_payment)
VALUES (800000, 'Aline Rewards', 'Rewards credit card.', 'MASTERCARD', 'REWARDS', 11.5, 24.99, 25);
/*********************************************************************
******************* USAGE WITH YOUR PROJECT **************************
**********************************************************************
 */

/*********************************************************************
*   Make sure to include the following property in your
*   application.yml / application.properties file:
*
*   *Properties*
*   spring.datasource.initialization-mode=always
*
*   *YAML*
*   spring:
*       datasource:
*           initialization-mode=always
**********************************************************************
*   This will make sure your project will initialize the database
*   if it has not already been initialized.
**********************************************************************
 */

