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
	(0 <> CASE
		WHEN `p`.`FirstName` > 'Jo'
			THEN 1
		WHEN `p`.`FirstName` = 'Jo'
			THEN 0
		ELSE -1
	END OR CASE
		WHEN `p`.`FirstName` > 'Jo'
			THEN 1
		WHEN `p`.`FirstName` = 'Jo'
			THEN 0
		ELSE -1
	END IS NULL) AND
	`p`.`PersonID` = 1

