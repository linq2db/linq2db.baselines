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
		INNER JOIN (
			SELECT
				'Janet' as `c1`
			UNION ALL
			SELECT
				'Doe' as `c1`
			UNION ALL
			SELECT
				'John' as `c1`
			UNION ALL
			SELECT
				'Doe' as `c1`
		) `t1` ON `p`.`LastName` = `t1`.`c1`

