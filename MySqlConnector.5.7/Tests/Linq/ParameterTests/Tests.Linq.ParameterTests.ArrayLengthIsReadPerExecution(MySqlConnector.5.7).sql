-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @arr Int32
SET     @arr = 1

SELECT
	`t`.`Id`,
	`t`.`Value`
FROM
	`ArrayLengthTable` `t`
WHERE
	`t`.`Id` = @arr
LIMIT 2

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @arr Int32
SET     @arr = 2

SELECT
	`t`.`Id`,
	`t`.`Value`
FROM
	`ArrayLengthTable` `t`
WHERE
	`t`.`Id` = @arr
LIMIT 2

