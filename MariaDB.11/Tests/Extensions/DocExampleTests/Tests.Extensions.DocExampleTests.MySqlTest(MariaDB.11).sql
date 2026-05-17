-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT /*+ NO_BKA(p@qq) INDEX(p@qq PK_Parent) NO_BKA(p@qq, c_1@qq) SET_VAR(sort_buffer_size=16M) */
	`p_1`.`ParentID`,
	`p_1`.`Value1`
FROM
	(
		SELECT /*+ QB_NAME(qq) */
			`p`.`ParentID`,
			`p`.`Value1`
		FROM
			`Parent` `p`
				CROSS JOIN `Child` `c_1` USE KEY FOR ORDER BY(IX_ChildIndex, IX_ChildIndex2)
	) `p_1`

