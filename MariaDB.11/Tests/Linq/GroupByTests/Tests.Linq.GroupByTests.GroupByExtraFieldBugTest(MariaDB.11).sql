BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p`.`LastName`
FROM
	`Doctor` `g_1`
		INNER JOIN `Person` `p` ON `g_1`.`PersonID` = `p`.`PersonID`
GROUP BY
	`p`.`LastName`

