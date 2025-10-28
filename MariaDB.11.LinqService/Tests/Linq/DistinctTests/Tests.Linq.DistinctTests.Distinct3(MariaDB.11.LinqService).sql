BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT DISTINCT
	Coalesce(`p`.`Value1`, `p`.`ParentID` % 2),
	`p`.`Value1`
FROM
	`Parent` `p`

