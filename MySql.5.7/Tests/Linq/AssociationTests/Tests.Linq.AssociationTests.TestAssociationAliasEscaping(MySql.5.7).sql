-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`c_1`.`ChildID`,
	`testaLыi_asParent`.`Value1`
FROM
	`Child` `c_1`
		LEFT JOIN `Parent` `testaLыi_asParent` ON `c_1`.`ParentID` = `testaLыi_asParent`.`ParentID`

