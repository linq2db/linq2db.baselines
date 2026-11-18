-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`c_1`.`ChildID`,
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Child` `c_1`
		LEFT JOIN LATERAL (
			SELECT
				`p`.`ParentID`,
				`p`.`Value1`
			FROM
				(
					SELECT
						`g_1`.`ParentID`
					FROM
						`GrandChild` `g_1`
					WHERE
						`g_1`.`ChildID` = `c_1`.`ChildID`
					LIMIT 1
				) `a_LinkedParent`
					INNER JOIN `Parent` `p` ON `a_LinkedParent`.`ParentID` = `p`.`ParentID`
		) `t1` ON 1=1

