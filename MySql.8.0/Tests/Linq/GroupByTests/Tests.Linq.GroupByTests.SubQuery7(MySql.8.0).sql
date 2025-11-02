-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`c_1`.`ChildID`
FROM
	`Parent` `gg`
		LEFT JOIN `Child` `c_1` ON `gg`.`ParentID` = `c_1`.`ParentID` AND `c_1`.`ParentID` = 1
GROUP BY
	`c_1`.`ChildID`

