BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Concat(COUNT(*), ' items have not been processed, e.g. #', MIN(`s`.`PersonID`), '.')
FROM
	`Person` `s`
WHERE
	`s`.`LastName` <> 'ERROR'
HAVING
	COUNT(*) > 0

