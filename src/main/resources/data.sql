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

INSERT IGNORE INTO issuer_identification_number (iin, card_issuer_name)
VALUES ('4', 'VISA');

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

