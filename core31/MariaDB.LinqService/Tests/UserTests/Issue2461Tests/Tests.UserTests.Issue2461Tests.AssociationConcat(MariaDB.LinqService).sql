﻿BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `MRECEIPT`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `MRECEIPT`
(
	`RECEIPT_NO` VARCHAR(4000)     NULL,
	`CUSTKEY`    VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `CUST_DTL`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `CUST_DTL`
(
	`CUSTKEY`   VARCHAR(4000)     NULL,
	`BILLGROUP` VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `CUST_DTL`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `MRECEIPT`

