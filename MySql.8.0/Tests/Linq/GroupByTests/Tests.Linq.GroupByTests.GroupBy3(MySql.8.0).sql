-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT DISTINCT
	Coalesce(`gr`.`Value1`, `c_1`.`ChildID`)
FROM
	`Parent` `gr`
		INNER JOIN `Child` `c_1` ON `gr`.`ParentID` = `c_1`.`ParentID`

