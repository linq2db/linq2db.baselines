-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`c_1`.`ChildID`,
	`testaLi_asParent`.`Value1`
FROM
	`Child` `c_1`
		LEFT JOIN `Parent` `testaLi_asParent` ON `c_1`.`ParentID` = `testaLi_asParent`.`ParentID`

