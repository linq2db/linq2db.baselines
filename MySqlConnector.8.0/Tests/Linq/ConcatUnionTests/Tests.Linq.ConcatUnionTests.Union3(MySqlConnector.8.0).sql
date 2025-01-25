BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`ParentID`,
	1
FROM
	`Parent` `p`
UNION
SELECT
	`ch`.`ParentID`,
	0
FROM
	`Child` `ch`

