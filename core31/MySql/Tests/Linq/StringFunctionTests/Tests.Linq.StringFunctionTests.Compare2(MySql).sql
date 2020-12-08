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
WHERE
	CASE
		WHEN Lower(`p`.`FirstName`) > 'joh'
			THEN 1
		WHEN Lower(`p`.`FirstName`) = 'joh'
			THEN 0
		ELSE -1
	END > 0 AND `p`.`PersonID` = 1

