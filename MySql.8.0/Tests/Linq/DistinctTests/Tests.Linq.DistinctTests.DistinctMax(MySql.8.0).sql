BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	MAX(`t1`.`ParentID`)
FROM
	(
		SELECT DISTINCT
			`p`.`ParentID`,
			`p`.`Value1`
		FROM
			`Parent` `p`
				INNER JOIN `Child` `c_1` ON `p`.`ParentID` = `c_1`.`ParentID`
		WHERE
			`c_1`.`ChildID` > 20
	) `t1`

