BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`p`.`ParentID`,
	CAST(1 AS SIGNED)
FROM
	`Parent` `p`
UNION
SELECT
	`ch`.`ParentID`,
	CAST(0 AS SIGNED)
FROM
	`Child` `ch`

