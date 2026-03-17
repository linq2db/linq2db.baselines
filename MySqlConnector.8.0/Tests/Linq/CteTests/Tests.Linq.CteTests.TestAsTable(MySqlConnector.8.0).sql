-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

WITH `CTE1_` (`ParentID`, `ChildID`)
AS
(
	SELECT
		`t1`.`ParentID`,
		`t1`.`ChildID`
	FROM
		`Child` `t1`
)
SELECT
	`t2`.`ParentID`,
	`t2`.`ChildID`
FROM
	`CTE1_` `t2`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

