-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @yes VarChar(1) -- String
SET     @yes = 'X'
DECLARE @no VarChar -- String
SET     @no = NULL

UPDATE
	`TableWithConverterValue` `x`
SET
	`x`.`Test1` = CASE
		WHEN `x`.`Test2` IS NULL THEN @yes
		ELSE @no
	END
WHERE
	`x`.`Id` = 1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`Id`,
	`x`.`NoConversion`,
	`x`.`Test1`,
	`x`.`Test2`
FROM
	`TableWithConverterValue` `x`
WHERE
	`x`.`Id` = 1
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`Id`,
	`x`.`NoConversion`,
	`x`.`Test1`,
	`x`.`Test2`
FROM
	`TableWithConverterValue` `x`
WHERE
	`x`.`Id` = 1
LIMIT 2

