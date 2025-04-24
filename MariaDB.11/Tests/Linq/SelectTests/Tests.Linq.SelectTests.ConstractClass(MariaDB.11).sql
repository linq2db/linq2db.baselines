BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`f`.`ParentID`,
	Lower(CAST(`f`.`Value1` AS CHAR(11)))
FROM
	`Parent` `f`

