-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`c_1`.`ChildID`,
	`testaLi_asParent`.`Value1`
FROM
	`Child` `c_1`
		LEFT JOIN `Parent` `testaLi_asParent` ON `c_1`.`ParentID` = `testaLi_asParent`.`ParentID`

