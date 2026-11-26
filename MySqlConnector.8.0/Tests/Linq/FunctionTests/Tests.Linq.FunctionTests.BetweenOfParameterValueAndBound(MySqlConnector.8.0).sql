-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @value Int32
SET     @value = 3
DECLARE @low Int32
SET     @low = 0

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`
WHERE
	@value BETWEEN @low AND `p`.`ParentID`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @value Int32
SET     @value = 3
DECLARE @low Int32
SET     @low = 0

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`
WHERE
	@value NOT BETWEEN @low AND `p`.`ParentID`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

