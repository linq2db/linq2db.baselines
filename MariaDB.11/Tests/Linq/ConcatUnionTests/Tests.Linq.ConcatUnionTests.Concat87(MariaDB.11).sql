-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`c_1`.`ParentID`,
	CAST(NULL AS SIGNED)
FROM
	`Child` `c_1`
UNION ALL
SELECT
	CAST(NULL AS SIGNED),
	`c_2`.`Value1`
FROM
	`Parent` `c_2`

