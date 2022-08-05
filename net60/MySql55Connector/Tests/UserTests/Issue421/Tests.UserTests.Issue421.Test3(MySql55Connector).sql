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
DECLARE @Id Int32
SET     @Id = 1
DECLARE @BlobValue Blob(3) -- Binary
SET     @BlobValue = 0x010203

INSERT INTO `BlobClass`
(
	`Id`,
	`BlobValue`
)
VALUES
(
	@Id,
	@BlobValue
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

