-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`Id`,
	`a_Child`.`Id`,
	`a_Child`.`Name`
FROM
	`Issue3140Parent` `p`
		LEFT JOIN `Issue3140Child` `a_Child` ON `p`.`ChildId` = `a_Child`.`Id`

