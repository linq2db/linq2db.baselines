BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `WhereWithString`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `WhereWithString`
(
	`Id`          INT           NOT NULL,
	`StringValue` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_WhereWithString` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `WhereWithString`

