-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

UPDATE
	`Parent` `p`
SET
	`p`.`Value1` = 1
WHERE
	`p`.`ParentID` = 1

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

UPDATE
	`Parent` `p`
SET
	`p`.`Value1` = NULL
WHERE
	`p`.`ParentID` = 1

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1
LIMIT 1

RollbackTransaction
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1
LIMIT 1

