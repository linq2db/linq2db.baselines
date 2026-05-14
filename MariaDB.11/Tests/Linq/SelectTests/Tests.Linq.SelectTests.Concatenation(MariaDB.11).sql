-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p`.`PersonID`,
	CONCAT('123', `p`.`FirstName`, '456')
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND (CONCAT('123', `p`.`FirstName`, '456')) = '123John456'

