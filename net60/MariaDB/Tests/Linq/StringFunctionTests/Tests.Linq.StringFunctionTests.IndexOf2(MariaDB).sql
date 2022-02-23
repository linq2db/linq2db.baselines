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
	Locate('e', `p`.`LastName`, 3) = 5 AND `p`.`PersonID` = 2

