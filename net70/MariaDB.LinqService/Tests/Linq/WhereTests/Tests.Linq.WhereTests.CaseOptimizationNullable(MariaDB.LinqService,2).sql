﻿BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `WhereWithString`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `WhereWithString`
(
	`Id`          INT           NOT NULL,
	`StringValue` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_WhereWithString` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StringValue VarChar(4) -- String
SET     @StringValue = 'Str1'

INSERT INTO `WhereWithString`
(
	`Id`,
	`StringValue`
)
VALUES
(
	@Id,
	@StringValue
)

BeforeExecute
-- MariaDB MySql.Official MySql
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
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `WhereWithString`

