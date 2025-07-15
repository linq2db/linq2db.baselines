BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @id Int32
SET     @id = 1

SELECT
	`g_1`.`ParentID`
FROM
	`Child` `g_1`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Parent` `t`
		WHERE
			`t`.`ParentID` = @id AND `t`.`ParentID` = `g_1`.`ParentID`
	)
GROUP BY
	`g_1`.`ParentID`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @id Int32
SET     @id = 2

SELECT
	`g_1`.`ParentID`
FROM
	`Child` `g_1`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Parent` `t`
		WHERE
			`t`.`ParentID` = @id AND `t`.`ParentID` = `g_1`.`ParentID`
	)
GROUP BY
	`g_1`.`ParentID`

