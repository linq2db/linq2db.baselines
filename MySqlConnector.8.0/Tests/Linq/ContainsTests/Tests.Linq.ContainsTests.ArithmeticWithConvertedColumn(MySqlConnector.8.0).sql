-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @operand Int32
SET     @operand = 2

SELECT
	SUM(`g_1`.`Cents`) * @operand
FROM
	`ConvertedAmount` `g_1`
GROUP BY
	`g_1`.`Group`
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @operand Int32
SET     @operand = 2

SELECT
	SUM(`g_1`.`Cents`) / @operand
FROM
	`ConvertedAmount` `g_1`
GROUP BY
	`g_1`.`Group`
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @operand Int32
SET     @operand = 200

SELECT
	SUM(`g_1`.`Cents`) + @operand
FROM
	`ConvertedAmount` `g_1`
GROUP BY
	`g_1`.`Group`
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @operand Int32
SET     @operand = 2

SELECT
	`x`.`Cents` * @operand
FROM
	`ConvertedAmount` `x`
WHERE
	`x`.`Id` = 1
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @operand Int32
SET     @operand = 200

SELECT
	`x`.`Cents` + @operand
FROM
	`ConvertedAmount` `x`
WHERE
	`x`.`Id` = 1
LIMIT 2

