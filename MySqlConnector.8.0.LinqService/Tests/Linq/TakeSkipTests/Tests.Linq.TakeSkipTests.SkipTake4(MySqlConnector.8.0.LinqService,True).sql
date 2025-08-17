BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 7
DECLARE @skip_1 Int32
SET     @skip_1 = 2

SELECT
	`t2`.`ParentID`,
	`t2`.`ChildID`
FROM
	(
		SELECT
			`t1`.`ChildID`,
			`t1`.`ParentID`
		FROM
			`Child` `t1`
		ORDER BY
			`t1`.`ChildID` DESC
		LIMIT @skip, @take
	) `t2`
ORDER BY
	`t2`.`ChildID`
LIMIT @skip_1, 9223372036854775807

