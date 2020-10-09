BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `BlobClass37`
(
	`Id`        INT            NOT NULL,
	`BlobValue` VARBINARY(100)     NULL,

	CONSTRAINT `PK_BlobClass37` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `BlobClass37`
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
-- MySql MySql.Official MySql

SELECT 
	`_`.`Id`, 
	`_`.`BlobValue`
FROM
	`BlobClass37` `_`
WHERE
	`_`.`Id` = 1
LIMIT 1

BeforeExecute
-- MySql MySql.Official MySql

SELECT 
	`_`.`Id`, 
	`_`.`BlobValue`
FROM
	`BlobClass37` `_`
WHERE
	`_`.`Id` = 1
LIMIT 1

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `BlobClass37`

