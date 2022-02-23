BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	Concat('123', `p`.`FirstName`, '456') = '123John456' AND
	`p`.`PersonID` = 1

