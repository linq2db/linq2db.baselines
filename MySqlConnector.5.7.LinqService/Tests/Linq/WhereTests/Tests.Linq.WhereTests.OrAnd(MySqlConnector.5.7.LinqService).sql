BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	(`c_1`.`ParentID` = 2 OR `c_1`.`ParentID` = 3) AND
	`c_1`.`ChildID` <> 21

