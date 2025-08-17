BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	COUNT(*)
FROM
	`Parent` `t1`
		LEFT JOIN `Child` `c_1` ON `t1`.`ParentID` = `c_1`.`ParentID`

