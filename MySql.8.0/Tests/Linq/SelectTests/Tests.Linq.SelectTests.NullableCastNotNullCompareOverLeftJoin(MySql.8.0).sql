-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Value1`
FROM
	`NullableLeftJoinTable` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`l`.`Value1`
FROM
	`NullableLeftJoinTable` `p`
		LEFT JOIN `NullableLeftJoinTable` `l` ON `l`.`Id` = `p`.`Id` + 1

