-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @name Int32
SET     @name = 4

SELECT
	`t`.`Id`,
	`t`.`Value`,
	`t`.`Money`
FROM
	`ParameterCastUnderCastTable` `t`
WHERE
	`t`.`Value` = CAST(@name AS CHAR(11))

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @name Int32
SET     @name = 4

SELECT
	`t`.`Id`,
	`t`.`Value`,
	`t`.`Money`
FROM
	`ParameterCastUnderCastTable` `t`
WHERE
	`t`.`Money` = CAST(@name AS DECIMAL(29, 10))

