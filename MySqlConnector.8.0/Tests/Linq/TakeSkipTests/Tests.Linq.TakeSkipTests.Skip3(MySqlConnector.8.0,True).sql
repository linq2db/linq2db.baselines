BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 3

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Child` `ch`
WHERE
	`ch`.`ChildID` >= 0 AND `ch`.`ChildID` <= 100
ORDER BY
	`ch`.`ParentID`,
	`ch`.`ChildID`
LIMIT @skip, 9223372036854775807

