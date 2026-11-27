-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`
FROM
	`NullableLeftJoinTable` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`l`.`Value1`
FROM
	`NullableLeftJoinTable` `p`
		LEFT JOIN `NullableLeftJoinTable` `l` ON `l`.`Id` = `p`.`Id` + 1

