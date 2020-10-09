BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `BlobClass19`
(
	`Id`        INT            NOT NULL,
	`BlobValue` VARBINARY(100)     NULL,

	CONSTRAINT `PK_BlobClass19` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `BlobClass19`
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
-- MySql55 MySql.Official MySql

SELECT 
	`_`.`Id`, 
	`_`.`BlobValue`
FROM
	`BlobClass19` `_`
WHERE
	`_`.`Id` = 1
LIMIT 1

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT 
	`_`.`Id`, 
	`_`.`BlobValue`
FROM
	`BlobClass19` `_`
WHERE
	`_`.`Id` = 1
LIMIT 1

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `BlobClass19`

