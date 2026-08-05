-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @value Bool -- Boolean
SET     @value = 0

SELECT
	`t`.`Id`,
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` = @value

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @value Bool -- Boolean
SET     @value = 0

SELECT
	`t`.`Id`,
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` = @value

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @value Bool -- Boolean
SET     @value = 0

SELECT
	`t`.`Id`,
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` <> @value OR `t`.`Value` IS NULL

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @value Bool -- Boolean
SET     @value = 0

SELECT
	`t`.`Id`,
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` <> @value

