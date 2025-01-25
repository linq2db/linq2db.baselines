BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`ChildId`,
	`a_Child`.`Id`,
	`a_Child`.`Name`
FROM
	`Issue3140Parent` `t1`
		LEFT JOIN `Issue3140Child` `a_Child` ON `t1`.`ChildId` = `a_Child`.`Id`

