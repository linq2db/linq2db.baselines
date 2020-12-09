BeforeExecute
-- MariaDB MySql.Official MySql

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
		WHEN Locate('p', `p`.`LastName`) = 0
			THEN -1
		ELSE Char_Length(`p`.`LastName`) - Locate('p', Reverse(`p`.`LastName`))
	END = 2 AND `p`.`PersonID` = 1

