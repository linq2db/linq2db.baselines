-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @skip Int32
SET     @skip = 2
DECLARE @take Int32
SET     @take = 1

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`
ORDER BY
	`t1`.`Value1`
LIMIT @skip, @take

