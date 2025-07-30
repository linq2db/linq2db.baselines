BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 1

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`,
	`a_Parent`.`ParentID`,
	`a_Parent`.`Value1`
FROM
	`Child` `c_1`
		LEFT JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`
LIMIT @take

