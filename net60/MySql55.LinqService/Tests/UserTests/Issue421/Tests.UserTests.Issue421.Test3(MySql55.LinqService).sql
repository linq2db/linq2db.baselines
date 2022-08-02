﻿BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `BlobClass`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `BlobClass`
(
	`Id`        INT            NOT NULL,
	`BlobValue` VARBINARY(100)     NULL,

	CONSTRAINT `PK_BlobClass` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`_`.`Id`,
	`_`.`BlobValue`
FROM
	`BlobClass` `_`
WHERE
	`_`.`Id` = 1
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`_`.`Id`,
	`_`.`BlobValue`
FROM
	`BlobClass` `_`
WHERE
	`_`.`Id` = 1
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `BlobClass`

