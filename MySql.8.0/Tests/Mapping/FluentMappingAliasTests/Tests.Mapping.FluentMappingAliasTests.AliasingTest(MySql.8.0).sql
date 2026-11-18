-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

