BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	MIN(`gr`.`ParentID`),
	MAX(`gr`.`ParentID`)
FROM
	`Parent` `gr`

