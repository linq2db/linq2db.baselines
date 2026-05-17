-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

UPDATE
	`TableWithConverterValue` `x`
SET
	`x`.`Test1` = CASE
		WHEN `x`.`Test2` IS NULL THEN 'X'
		ELSE NULL
	END
WHERE
	`x`.`Id` = 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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

