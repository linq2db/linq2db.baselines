BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	LOCATE('Jo', `p`.`FirstName`) = 1 AND `p`.`PersonID` = 1

