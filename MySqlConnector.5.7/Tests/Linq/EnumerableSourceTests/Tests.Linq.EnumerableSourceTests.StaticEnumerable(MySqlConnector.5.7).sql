BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT 1 AS `item`
				UNION ALL
				SELECT 2
				UNION ALL
				SELECT 3) `v`
		WHERE
			`v`.`item` = `p`.`PersonID`
	)

