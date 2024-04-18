BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @take Int32
SET     @take = 5

SELECT
	(
		SELECT
			Count(*)
		FROM
			`Child` `t1`
		WHERE
			`p`.`ParentID` = `t1`.`ParentID`
	)
FROM
	(
		SELECT
			`t2`.`ParentID`
		FROM
			`Parent` `t2`
		LIMIT @take
	) `p`
ORDER BY
	`p`.`ParentID` DESC

