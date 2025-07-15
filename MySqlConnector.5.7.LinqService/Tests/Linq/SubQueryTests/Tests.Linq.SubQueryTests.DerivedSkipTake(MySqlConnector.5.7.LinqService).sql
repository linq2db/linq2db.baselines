BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 1

SELECT
	`t2`.`ParentID`,
	`t2`.`Value1`
FROM
	(
		SELECT
			`t1`.`ParentID`,
			`t1`.`Value1`
		FROM
			`Parent` `t1`
		LIMIT @skip, @take
	) `t2`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

