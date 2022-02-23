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
	Right(`p`.`FirstName`, 3) = 'ohn' AND `p`.`PersonID` = 1

