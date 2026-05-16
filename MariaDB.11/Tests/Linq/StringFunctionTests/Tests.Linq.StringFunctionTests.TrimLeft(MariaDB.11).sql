-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`pp`.`PersonID`,
	CONCAT('  ', `pp`.`FirstName`, ' ')
FROM
	`Person` `pp`
WHERE
	`pp`.`PersonID` = 1 AND LTRIM(CONCAT('  ', `pp`.`FirstName`, ' ')) = 'John '

