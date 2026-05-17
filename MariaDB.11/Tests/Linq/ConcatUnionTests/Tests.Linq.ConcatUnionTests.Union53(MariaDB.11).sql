-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p1`.`ParentID`,
	CAST(NULL AS SIGNED)
FROM
	`Parent` `p1`
UNION
SELECT
	CAST(NULL AS SIGNED),
	`p2`.`Value1`
FROM
	`Parent` `p2`

