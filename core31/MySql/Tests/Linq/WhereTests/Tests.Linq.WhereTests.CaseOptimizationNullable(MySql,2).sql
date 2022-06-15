BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `WhereWithString`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `WhereWithString`
(
	`Id`          INT           NOT NULL,
	`StringValue` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_WhereWithString` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `WhereWithString`
(
	`Id`,
	`StringValue`
)
VALUES
(1,'Str1')

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @filterValue Int32
SET     @filterValue = 2

SELECT
	`x`.`Id`,
	`x`.`StringValue`
FROM
	`WhereWithString` `x`
WHERE
	`x`.`Id` = @filterValue

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `WhereWithString`

