-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @n Int32
SET     @n = 3

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` > 1
ORDER BY
	`p`.`ParentID`
LIMIT @n, 1

