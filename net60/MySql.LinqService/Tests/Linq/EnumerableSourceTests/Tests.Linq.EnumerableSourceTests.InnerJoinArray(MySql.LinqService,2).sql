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
			SELECT 'Janet' AS `item` FROM DUAL
			UNION ALL
			SELECT 'Doe' FROM DUAL
			UNION ALL
			SELECT 'John' FROM DUAL
			UNION ALL
			SELECT 'Doe' FROM DUAL) `n` ON `p`.`LastName` = `n`.`item`

