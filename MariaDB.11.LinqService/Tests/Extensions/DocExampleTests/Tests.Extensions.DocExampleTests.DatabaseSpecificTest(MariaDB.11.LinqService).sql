BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT /*+ QB_NAME(qb) NO_BKA(t1@qb) INDEX(t1@qb PK_Parent) MAX_EXECUTION_TIME(1000) BKA(c_1@qb) */
	`t`.`PersonID`,
	`t`.`Diagnosis`
FROM
	`Parent` `t1`
		CROSS JOIN `Child` `c_1` USE INDEX(IX_ChildIndex)
		INNER JOIN `Patient` `t` ON `c_1`.`ParentID` = `t`.`PersonID`

