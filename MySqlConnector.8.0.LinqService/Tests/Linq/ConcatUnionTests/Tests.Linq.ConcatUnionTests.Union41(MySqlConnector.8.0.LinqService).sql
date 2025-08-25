BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`p`.`ParentID`,
	CAST(1 AS SIGNED)
FROM
	`Parent` `p`
UNION
SELECT
	`ch`.`ParentID`,
	CAST(0 AS SIGNED)
FROM
	`Child` `ch`

