BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `MRECEIPT`
(
	`RECEIPT_NO` VARCHAR(255)     NULL,
	`CUSTKEY`    VARCHAR(255)     NULL
)

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `CUST_DTL`
(
	`CUSTKEY`   VARCHAR(255)     NULL,
	`BILLGROUP` VARCHAR(255)     NULL
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `CUST_DTL`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `MRECEIPT`

