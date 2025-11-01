-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

(
	SELECT /*+ NO_BNL(p, c_2.c_1) */
		`p`.`ParentID`,
		`p`.`Value1`
	FROM
		`Parent` `p`
	FOR UPDATE
)
UNION
(
	SELECT
		`a_Parent`.`ParentID`,
		`a_Parent`.`Value1`
	FROM
		`Child` `p_1`
			LEFT JOIN `Parent` `a_Parent` ON `p_1`.`ParentID` = `a_Parent`.`ParentID`
	FOR UPDATE
)
UNION
(
	SELECT
		`t1`.`ParentID`,
		`t1`.`Value1`
	FROM
		`Parent` `t1`
			CROSS JOIN (
				SELECT
					*
				FROM
					`Child` `c_1`
				FOR UPDATE
			) `c_2`
	FOR UPDATE
)

