﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE `BlobClass`
(
	`Id`        INT            NOT NULL,
	`BlobValue` VARBINARY(100)     NULL,

	CONSTRAINT `PK_BlobClass` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

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
-- MySql55Connector MySqlConnector MySql

SELECT
	`_`.`Id`,
	`_`.`BlobValue`
FROM
	`BlobClass` `_`
WHERE
	`_`.`Id` = 1
LIMIT 1

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`_`.`Id`,
	`_`.`BlobValue`
FROM
	`BlobClass` `_`
WHERE
	`_`.`Id` = 1
LIMIT 1

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `BlobClass`

