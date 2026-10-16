-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

