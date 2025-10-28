BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` >= 1000

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(1000,NULL),
(1001,NULL)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` = 1000 AND `Parent`.`Value1` IS NULL OR
	`Parent`.`ParentID` = 1001 AND `Parent`.`Value1` IS NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` >= 1000

