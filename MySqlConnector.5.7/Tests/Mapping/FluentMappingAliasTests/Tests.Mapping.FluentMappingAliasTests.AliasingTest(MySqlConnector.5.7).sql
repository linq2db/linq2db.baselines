-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t`.`Id`,
	`t`.`Value`,
	`t`.`ValueStr`
FROM
	`InstanceClass` `t`
WHERE
	`t`.`Id` > 1 AND
	`t`.`Value` >= 104 AND
	`t`.`Value` <= 115 AND
	`t`.`ValueStr` LIKE 'S%' ESCAPE '~'

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t`.`Id`,
	`t`.`Value`,
	`t`.`ValueStr`
FROM
	`InstanceClass` `t`
WHERE
	`t`.`Id` > 1 AND
	`t`.`Value` >= 104 AND
	`t`.`Value` <= 115 AND
	`t`.`ValueStr` LIKE 'S%' ESCAPE '~'

