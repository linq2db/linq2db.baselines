BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p`.`ParentID` + 1,
	`p`.`ParentID`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1
UNION ALL
SELECT
	NULL,
	`p_1`.`ParentID`
FROM
	`Parent` `p_1`
WHERE
	`p_1`.`ParentID` = 2

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

