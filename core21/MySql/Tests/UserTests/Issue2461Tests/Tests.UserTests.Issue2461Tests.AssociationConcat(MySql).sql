﻿BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `MRECEIPT`
(
	`RECEIPT_NO` VARCHAR(255)     NULL,
	`CUSTKEY`    VARCHAR(255)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `CUST_DTL`
(
	`CUSTKEY`   VARCHAR(255)     NULL,
	`BILLGROUP` VARCHAR(255)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `CUST_DTL`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `MRECEIPT`

