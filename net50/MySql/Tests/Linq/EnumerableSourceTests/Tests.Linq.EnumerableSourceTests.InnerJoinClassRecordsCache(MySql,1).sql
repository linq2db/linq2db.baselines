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
			SELECT 2 AS `PersonID` FROM DUAL
			UNION ALL
			SELECT 3 FROM DUAL) `n` ON `p`.`PersonID` = `n`.`PersonID`

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
			SELECT 4 AS `PersonID` FROM DUAL
			UNION ALL
			SELECT 5 FROM DUAL) `n` ON `p`.`PersonID` = `n`.`PersonID`

