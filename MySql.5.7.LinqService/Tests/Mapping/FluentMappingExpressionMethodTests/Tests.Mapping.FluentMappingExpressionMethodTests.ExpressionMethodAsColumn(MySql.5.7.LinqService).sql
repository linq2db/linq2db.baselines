BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value`,
	Concat('M', CAST(`t1`.`Id` AS CHAR(255)))
FROM
	`InstanceClass` `t1`

