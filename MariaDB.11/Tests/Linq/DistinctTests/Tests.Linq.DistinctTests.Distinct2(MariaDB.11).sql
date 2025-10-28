BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT DISTINCT
	Coalesce(`p`.`Value1`, `p`.`ParentID` % 2)
FROM
	`Parent` `p`

