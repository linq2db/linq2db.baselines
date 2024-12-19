BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`c_1`.`ParentID`,
	CASE
		WHEN `c_1`.`ParentID` IS NOT NULL AND `a_Parent`.`ParentID` IS NOT NULL
			THEN 1
		ELSE 0
	END,
	`a_Parent`.`Value1`
FROM
	`Parent` `t1`
		LEFT JOIN `Child` `c_1` ON `t1`.`Value1` = `c_1`.`ParentID`
		LEFT JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`

