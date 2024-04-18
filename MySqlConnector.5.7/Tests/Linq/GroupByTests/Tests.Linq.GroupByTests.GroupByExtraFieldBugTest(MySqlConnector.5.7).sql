BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`LastName`
FROM
	`Doctor` `d`
		INNER JOIN `Person` `p` ON `d`.`PersonID` = `p`.`PersonID`
GROUP BY
	`p`.`LastName`

