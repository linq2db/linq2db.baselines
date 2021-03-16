BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
		INNER JOIN (
			SELECT
				'Doe' as `c1`
		) `n` ON `p`.`LastName` = `n`.`c1`

