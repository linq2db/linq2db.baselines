-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` > 1000

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` > 1000

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @values_0 Int32
SET     @values_0 = 1001

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(
	@values_0,
	1
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @values_0 Int32
SET     @values_0 = 1002

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(
	@values_0,
	1
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	COUNT(*)
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` > 1000

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` IN (1001, 1002)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	COUNT(*)
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` > 1000

