BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	(
		SELECT 'Janet' AS `item` FROM DUAL
		UNION ALL
		SELECT 'Doe' FROM DUAL
		UNION ALL
		SELECT 'John' FROM DUAL
		UNION ALL
		SELECT 'Doe' FROM DUAL) `n`
		INNER JOIN `Person` `p` ON `n`.`item` = `p`.`LastName`

