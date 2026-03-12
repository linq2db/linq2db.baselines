-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` <= 2
ORDER BY
	`p`.`ParentID`

