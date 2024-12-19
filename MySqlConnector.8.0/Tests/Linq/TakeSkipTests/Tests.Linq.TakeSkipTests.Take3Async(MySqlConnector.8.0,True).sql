BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)
DECLARE @take Int32
SET     @take = 3

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Child` `ch`
WHERE
	`ch`.`ChildID` > 3 OR `ch`.`ChildID` < 4
LIMIT @take

