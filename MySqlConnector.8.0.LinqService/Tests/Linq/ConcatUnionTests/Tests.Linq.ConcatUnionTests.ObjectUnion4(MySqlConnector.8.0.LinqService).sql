BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p1`.`ParentID`,
	`p1`.`Value1`,
	`p1`.`ParentID`
FROM
	`Parent` `p1`
WHERE
	`p1`.`ParentID` > 3
UNION
SELECT
	`p2`.`ParentID`,
	`p2`.`Value1`,
	`p2`.`ParentID`
FROM
	`Parent` `p2`
WHERE
	`p2`.`ParentID` <= 3

