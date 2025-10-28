BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	Concat(CAST(COUNT(*) AS CHAR(11)), ' items have not been processed, e.g. #', Coalesce(CAST(MIN(`g_1`.`PersonID`) AS CHAR(11)), ''), '.')
FROM
	`Person` `g_1`
WHERE
	`g_1`.`LastName` <> 'ERROR'
HAVING
	COUNT(*) > 0

