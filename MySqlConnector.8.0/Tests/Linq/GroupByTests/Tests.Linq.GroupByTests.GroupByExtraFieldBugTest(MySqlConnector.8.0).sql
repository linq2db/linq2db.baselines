BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`LastName`
FROM
	`Doctor` `d`
		INNER JOIN `Person` `p` ON `d`.`PersonID` = `p`.`PersonID`
GROUP BY
	`p`.`LastName`

