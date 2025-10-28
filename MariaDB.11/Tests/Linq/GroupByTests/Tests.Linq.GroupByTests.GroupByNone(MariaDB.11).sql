BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	MIN(`gr`.`ParentID`),
	MAX(`gr`.`ParentID`)
FROM
	`Parent` `gr`

