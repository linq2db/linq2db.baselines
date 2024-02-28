BeforeExecute
-- MySql MySql.Official MySql

SELECT /*+ QB_NAME(qb) NO_BKA(t1.p@qb) INDEX(t1.p@qb PK_Parent) MAX_EXECUTION_TIME(1000) BKA(t1.c_1@qb) */
	`t`.`PersonID`,
	`t`.`Diagnosis`
FROM
	(
		SELECT
			`c_1`.`ParentID`
		FROM
			`Parent` `p`,
			`Child` `c_1` USE INDEX(IX_ChildIndex)
	) `t1`
		INNER JOIN `Patient` `t` ON `t1`.`ParentID` = `t`.`PersonID`

