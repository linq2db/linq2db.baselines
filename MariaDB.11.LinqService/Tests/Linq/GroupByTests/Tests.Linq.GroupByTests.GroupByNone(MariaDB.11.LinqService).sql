BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	MIN(`gr`.`ParentID`),
	MAX(`gr`.`ParentID`)
FROM
	`Parent` `gr`

