BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`g_1`.`Value1`
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					`GrandChild` `_`
						INNER JOIN `Parent` `a_Parent` ON `_`.`ParentID` = `a_Parent`.`ParentID`
				WHERE
					(`t2`.`c1` = `a_Parent`.`ParentID` OR `t2`.`c1` IS NULL AND `a_Parent`.`ParentID` IS NULL) AND
					`_`.`ChildID` >= 20
			) as `cnt`,
			(
				SELECT
					Sum(`p`.`ParentID`)
				FROM
					`GrandChild` `p`
						INNER JOIN `Parent` `a_Parent_1` ON `p`.`ParentID` = `a_Parent_1`.`ParentID`
				WHERE
					(`t2`.`c1` = `a_Parent_1`.`ParentID` OR `t2`.`c1` IS NULL AND `a_Parent_1`.`ParentID` IS NULL) AND
					`p`.`ChildID` >= 19
			) as `Sum_1`,
			(
				SELECT
					Max(`p_1`.`ParentID`)
				FROM
					`GrandChild` `p_1`
						INNER JOIN `Parent` `a_Parent_2` ON `p_1`.`ParentID` = `a_Parent_2`.`ParentID`
				WHERE
					(`t2`.`c1` = `a_Parent_2`.`ParentID` OR `t2`.`c1` IS NULL AND `a_Parent_2`.`ParentID` IS NULL) AND
					`p_1`.`ChildID` >= 19
			) as `ex`,
			`t2`.`Value1`
		FROM
			(
				SELECT
					`a_Parent_3`.`ParentID` as `c1`,
					`a_Parent_3`.`Value1`
				FROM
					`GrandChild` `t1`
						INNER JOIN `Parent` `a_Parent_3` ON `t1`.`ParentID` = `a_Parent_3`.`ParentID`
			) `t2`
		GROUP BY
			`t2`.`c1`,
			`t2`.`Value1`
	) `g_1`
WHERE
	`g_1`.`cnt` > 2 AND `g_1`.`Sum_1` > 0 AND `g_1`.`ex` > 0

