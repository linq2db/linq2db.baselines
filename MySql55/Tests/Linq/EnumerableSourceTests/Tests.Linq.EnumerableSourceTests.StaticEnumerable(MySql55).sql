BeforeExecute
-- MySql55 MySql.Official MySql

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
				SELECT 1 AS `item` FROM DUAL
				UNION ALL
				SELECT 2 FROM DUAL
				UNION ALL
				SELECT 3 FROM DUAL) `v`
		WHERE
			`v`.`item` = `p`.`PersonID`
	)

