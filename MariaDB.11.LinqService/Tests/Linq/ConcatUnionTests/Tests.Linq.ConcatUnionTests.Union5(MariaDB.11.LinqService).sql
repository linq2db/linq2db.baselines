BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
UNION
SELECT
	`p2`.`ParentID`,
	NULL
FROM
	`Parent` `p2`

