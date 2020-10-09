BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `BlobClass20`
(
	`Id`        INT            NOT NULL,
	`BlobValue` VARBINARY(100)     NULL,

	CONSTRAINT `PK_BlobClass20` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySql.Official MySql

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
-- MariaDB MySql.Official MySql

SELECT 
	`_`.`Id`, 
	`_`.`BlobValue`
FROM
	`BlobClass20` `_`
WHERE
	`_`.`Id` = 1
LIMIT 1

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	`_`.`Id`, 
	`_`.`BlobValue`
FROM
	`BlobClass20` `_`
WHERE
	`_`.`Id` = 1
LIMIT 1

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `BlobClass20`

