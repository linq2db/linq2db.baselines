-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` > 1000

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @ParentID Int32
SET     @ParentID = 1001

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(
	@ParentID,
	1
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @id Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` = @id

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` > 1000

