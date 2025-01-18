BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Value`,
	Concat('M', CAST(`t1`.`Id` AS CHAR(11)))
FROM
	`InstanceClass` `t1`

