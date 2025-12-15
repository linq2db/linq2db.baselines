-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

UPDATE
	`Parent` `p2`,
	`Parent` `p1`
SET
	`p2`.`ParentID` = `p1`.`ParentID`
WHERE
	`p1`.`ParentID` < 3 AND `p1`.`ParentID` = `p2`.`ParentID`

