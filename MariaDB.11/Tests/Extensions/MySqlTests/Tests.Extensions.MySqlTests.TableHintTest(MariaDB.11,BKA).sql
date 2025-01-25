BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT /*+ BKA(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

