BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`s`.`ParentID`,
	`s`.`Value1`,
	`c_2`.`ParentID`,
	`c_2`.`ChildID_1`
FROM
	`Parent` `s`
		LEFT JOIN (
			SELECT
				CASE
					WHEN `c_1`.`ParentID` IS NOT NULL THEN `c_1`.`ChildID`
					ELSE -100
				END as `ChildID`,
				`c_1`.`ParentID`,
				`c_1`.`ChildID` as `ChildID_1`,
				`c_1`.`ParentID` as `ParentID_1`
			FROM
				`Child` `c_1`
		) `c_2` ON `s`.`ParentID` = `c_2`.`ParentID_1`
WHERE
	`c_2`.`ChildID` < 0

