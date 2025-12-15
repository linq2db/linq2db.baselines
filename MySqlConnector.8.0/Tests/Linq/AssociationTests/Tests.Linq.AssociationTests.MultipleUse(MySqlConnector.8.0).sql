-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`,
	`t1`.`ParentID_1`,
	`t1`.`Value1`
FROM
	`Child` `s`
		LEFT JOIN LATERAL (
			SELECT
				`c_1`.`ParentID`,
				`c_1`.`ChildID`,
				`a_Parent`.`ParentID` as `ParentID_1`,
				`a_Parent`.`Value1`
			FROM
				`Child` `c_1`
					LEFT JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`
			WHERE
				`c_1`.`ChildID` = `s`.`ChildID`
			LIMIT 1
		) `t1` ON 1=1
WHERE
	`t1`.`ParentID` IS NOT NULL

