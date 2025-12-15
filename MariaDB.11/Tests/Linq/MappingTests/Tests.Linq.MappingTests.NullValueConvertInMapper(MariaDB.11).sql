-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` <= 2
ORDER BY
	`p`.`ParentID`

