﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `BlobClass`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `BlobClass`
(
	`Id`        INT            NOT NULL,
	`BlobValue` VARBINARY(100)     NULL,

	CONSTRAINT `PK_BlobClass` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `BlobClass`
(
	`Id`,
	`BlobValue`
)
VALUES
(
	1,
	0x010203
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`_`.`Id`,
	`_`.`BlobValue`
FROM
	`BlobClass` `_`
WHERE
	`_`.`Id` = 1
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`_`.`Id`,
	`_`.`BlobValue`
FROM
	`BlobClass` `_`
WHERE
	`_`.`Id` = 1
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `BlobClass`

