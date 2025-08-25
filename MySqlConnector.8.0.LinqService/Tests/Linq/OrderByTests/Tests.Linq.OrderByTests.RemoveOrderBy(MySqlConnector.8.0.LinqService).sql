BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)
DECLARE @take Int32
SET     @take = 2

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`
ORDER BY
	`t1`.`ParentID`
LIMIT @take

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

