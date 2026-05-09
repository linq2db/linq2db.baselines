-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`pp`.`PersonID`,
	Concat('  ', `pp`.`FirstName`, ' ')
FROM
	`Person` `pp`
WHERE
	`pp`.`PersonID` = 1 AND RTRIM(Concat('  ', `pp`.`FirstName`, ' ')) = '  John'

