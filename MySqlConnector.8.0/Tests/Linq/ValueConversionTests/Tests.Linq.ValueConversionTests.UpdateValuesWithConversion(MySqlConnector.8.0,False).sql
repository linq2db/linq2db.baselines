-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Test1 String -- AnsiStringFixedLength
SET     @Test1 = NULL

UPDATE
	`TableWithConverterValue` `x`
SET
	`x`.`Test1` = @Test1
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
DECLARE @Test1 String(1) -- AnsiStringFixedLength
SET     @Test1 = 'X'

UPDATE
	`TableWithConverterValue` `x`
SET
	`x`.`Test1` = @Test1
WHERE
	`x`.`Id` = 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`Id`,
	`x`.`NoConversion`,
	`x`.`Test1`,
	`x`.`Test2`
FROM
	`TableWithConverterValue` `x`
WHERE
	`x`.`Id` = 2
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Test1 String(1) -- AnsiStringFixedLength
SET     @Test1 = 'X'

SELECT
	`x`.`Id`,
	`x`.`NoConversion`,
	`x`.`Test1`,
	`x`.`Test2`
FROM
	`TableWithConverterValue` `x`
WHERE
	`x`.`Test1` = @Test1

