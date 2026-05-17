-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	CONCAT(`p`.`LastName`, ', ', `p`.`FirstName`)
FROM
	`Person` `p`
WHERE
	(CONCAT(`p`.`LastName`, ', ', `p`.`FirstName`)) = 'Pupkin, John'

