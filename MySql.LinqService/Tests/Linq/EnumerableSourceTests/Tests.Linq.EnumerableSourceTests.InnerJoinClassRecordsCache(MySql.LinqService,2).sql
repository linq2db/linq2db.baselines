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
			SELECT 3 AS `ID` FROM DUAL
			UNION ALL
			SELECT 4 FROM DUAL) `n` ON `p`.`PersonID` = `n`.`ID`

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
			SELECT 5 AS `ID` FROM DUAL
			UNION ALL
			SELECT 6 FROM DUAL) `n` ON `p`.`PersonID` = `n`.`ID`

