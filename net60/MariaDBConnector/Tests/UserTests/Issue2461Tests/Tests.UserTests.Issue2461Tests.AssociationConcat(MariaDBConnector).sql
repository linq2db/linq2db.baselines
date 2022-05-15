﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE `MRECEIPT`
(
	`RECEIPT_NO` VARCHAR(255)     NULL,
	`CUSTKEY`    VARCHAR(255)     NULL
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE `CUST_DTL`
(
	`CUSTKEY`   VARCHAR(255)     NULL,
	`BILLGROUP` VARCHAR(255)     NULL
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `CUST_DTL`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `MRECEIPT`

