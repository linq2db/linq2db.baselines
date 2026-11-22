-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @parentId Int32
SET     @parentId = 1

SELECT
	`親`.`ParentID`,
	`親`.`Value1`
FROM
	`Parent` `親`
		INNER JOIN `Child` `子` ON `子`.`ParentID` = `親`.`ParentID`
WHERE
	`親`.`ParentID` = @parentId

