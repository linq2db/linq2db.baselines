BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT /*+ MAX_EXECUTION_TIME(1000) */
	`t`.`ParentID`,
	`t`.`ChildID`
FROM
	`Child` `t` USE INDEX(IX_ChildIndex)

