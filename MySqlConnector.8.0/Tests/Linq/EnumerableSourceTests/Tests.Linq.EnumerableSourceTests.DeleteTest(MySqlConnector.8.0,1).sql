BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE   `t`
FROM
	`TableToInsert` `t`
		INNER JOIN (
			SELECT 2 AS `Id`
			UNION ALL
			SELECT 3) `r` ON `t`.`Id` = `r`.`Id`

