﻿BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `BlobClass`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `BlobClass`
(
	`Id`        INT            NOT NULL,
	`BlobValue` VARBINARY(100)     NULL,

	CONSTRAINT `PK_BlobClass` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

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
-- MySqlConnector MySql

SELECT
	`_`.`Id`,
	`_`.`BlobValue`
FROM
	`BlobClass` `_`
WHERE
	`_`.`Id` = 1
LIMIT 1

BeforeExecute
-- MySqlConnector MySql

UPDATE
	`BlobClass` `_`
SET
	`_`.`BlobValue` = 0x030201
WHERE
	`_`.`Id` = 1

BeforeExecute
-- MySqlConnector MySql

SELECT
	`_`.`Id`,
	`_`.`BlobValue`
FROM
	`BlobClass` `_`
WHERE
	`_`.`Id` = 1
LIMIT 1

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `BlobClass`

