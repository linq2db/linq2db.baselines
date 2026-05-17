-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` <= 2
ORDER BY
	`p`.`ParentID`

