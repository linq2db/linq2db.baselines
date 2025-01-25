BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`ParentID`,
	1
FROM
	`Parent` `p`
UNION
SELECT
	`ch`.`ParentID`,
	0
FROM
	`Child` `ch`

