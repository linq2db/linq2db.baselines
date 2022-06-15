BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE `MRECEIPT`
(
	`RECEIPT_NO` VARCHAR(4000)     NULL,
	`CUSTKEY`    VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE `CUST_DTL`
(
	`CUSTKEY`   VARCHAR(4000)     NULL,
	`BILLGROUP` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `CUST_DTL`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `MRECEIPT`

