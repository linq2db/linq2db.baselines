BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `BlobClass20`
(
	`Id`        INT            NOT NULL,
	`BlobValue` VARBINARY(100)     NULL,

	CONSTRAINT `PK_BlobClass20` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `BlobClass20`
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
	`BlobClass20` `_`
WHERE
	`_`.`Id` = 1
LIMIT 1

BeforeExecute
-- MySqlConnector MySql

SELECT
	`_`.`Id`,
	`_`.`BlobValue`
FROM
	`BlobClass20` `_`
WHERE
	`_`.`Id` = 1
LIMIT 1

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `BlobClass20`

