BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `WhereWithString`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `WhereWithString`
(
	`Id`          INT           NOT NULL,
	`StringValue` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_WhereWithString` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
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
-- MySql55Connector MySqlConnector MySql

SELECT
	`x`.`Id`,
	`x`.`StringValue`
FROM
	`WhereWithString` `x`
WHERE
	LOCATE('Str', `x`.`StringValue`) > 0

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `WhereWithString`

