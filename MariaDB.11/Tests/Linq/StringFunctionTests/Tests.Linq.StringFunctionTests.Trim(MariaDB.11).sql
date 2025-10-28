BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`pp`.`PersonID`,
	Concat('  ', `pp`.`FirstName`, ' ')
FROM
	`Person` `pp`
WHERE
	`pp`.`PersonID` = 1 AND Trim(Concat('  ', `pp`.`FirstName`, ' ')) = 'John'

