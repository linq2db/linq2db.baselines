BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`LastName`
FROM
	`Doctor` `g_1`
		INNER JOIN `Person` `p` ON `g_1`.`PersonID` = `p`.`PersonID`
GROUP BY
	`p`.`LastName`

