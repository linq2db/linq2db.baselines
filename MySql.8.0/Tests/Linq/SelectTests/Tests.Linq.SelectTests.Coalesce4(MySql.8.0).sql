BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Coalesce((
		SELECT
			`a_Parent`.`Value1`
		FROM
			`Child` `ch`
				LEFT JOIN `Parent` `a_Parent` ON `ch`.`ParentID` = `a_Parent`.`ParentID`
		WHERE
			`ch`.`ChildID` = `c_1`.`ChildID`
		LIMIT 1
	), `c_1`.`ChildID`)
FROM
	`Child` `c_1`

