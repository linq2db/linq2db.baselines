BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `BlobClass10`
(
	`Id`        INT            NOT NULL,
	`BlobValue` VARBINARY(100)     NULL,

	CONSTRAINT `PK_BlobClass10` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `BlobClass10`
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
	`BlobClass10` `_`
WHERE
	`_`.`Id` = 1
LIMIT 1

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`_`.`Id`,
	`_`.`BlobValue`
FROM
	`BlobClass10` `_`
WHERE
	`_`.`Id` = 1
LIMIT 1

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `BlobClass10`

