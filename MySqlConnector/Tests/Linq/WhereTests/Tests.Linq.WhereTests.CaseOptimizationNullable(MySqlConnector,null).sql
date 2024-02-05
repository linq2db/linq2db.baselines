BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `WhereWithString`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `WhereWithString`
(
	`Id`          INT           NOT NULL,
	`StringValue` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_WhereWithString` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `WhereWithString`
(
	`Id`,
	`StringValue`
)
VALUES
(1,'Str1')

BeforeExecute
-- MySqlConnector MySql

SELECT
	`x`.`Id`,
	`x`.`StringValue`
FROM
	`WhereWithString` `x`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `WhereWithString`

