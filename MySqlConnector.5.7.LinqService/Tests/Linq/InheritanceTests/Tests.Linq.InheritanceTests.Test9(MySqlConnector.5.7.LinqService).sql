BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`
WHERE
	(`p`.`ParentID` = 1 OR `p`.`ParentID` = 2 OR `p`.`ParentID` = 4) AND
	`p`.`Value1` IS NULL

