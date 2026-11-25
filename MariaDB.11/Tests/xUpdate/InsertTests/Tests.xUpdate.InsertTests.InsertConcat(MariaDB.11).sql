-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` > 1000

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
SELECT
	`p`.`ParentID` + 1000,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1
UNION ALL
SELECT
	`p_1`.`ParentID` + 1000,
	`p_1`.`Value1`
FROM
	`Parent` `p_1`
WHERE
	`p_1`.`ParentID` = 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` > 1000
ORDER BY
	`p`.`ParentID`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` > 1000

