BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`cp`.`ParentID`,
	`cp`.`Value1`
FROM
	`Parent` `cp`
		INNER JOIN `Child` `c_1` ON `cp`.`ParentID` = `c_1`.`ParentID`

