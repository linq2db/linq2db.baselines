BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `BlobClass`
(
	`Id`        INT            NOT NULL,
	`BlobValue` VARBINARY(100)     NULL,

	CONSTRAINT `PK_BlobClass` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql
DECLARE @BlobValue Blob(3) -- Binary
SET     @BlobValue = 0x030201

UPDATE
	`BlobClass` `_`
SET
	`_`.`BlobValue` = @BlobValue
WHERE
	`_`.`Id` = 1

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `BlobClass`

