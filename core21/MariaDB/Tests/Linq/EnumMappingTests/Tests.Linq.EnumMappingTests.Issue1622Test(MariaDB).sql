BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `Issue1622Table`
(
	`Id`       INT          NOT NULL,
	`SomeText` VARCHAR(255)     NULL,

	CONSTRAINT `PK_Issue1622Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @SomeText VarChar(13) -- String
SET     @SomeText = 'Value1_suffix'

INSERT INTO `Issue1622Table`
(
	`Id`,
	`SomeText`
)
VALUES
(
	@Id,
	@SomeText
)

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `Issue1622Table`

