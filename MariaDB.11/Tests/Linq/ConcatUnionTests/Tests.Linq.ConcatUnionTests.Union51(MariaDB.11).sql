-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p1`.`ParentID`,
	`p1`.`Value1`
FROM
	`Parent` `p1`
UNION
SELECT
	`p2`.`ParentID`,
	CAST(NULL AS SIGNED)
FROM
	`Parent` `p2`

