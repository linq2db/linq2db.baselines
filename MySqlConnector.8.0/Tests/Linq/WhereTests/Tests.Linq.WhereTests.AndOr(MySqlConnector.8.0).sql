BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1 OR (`p`.`ParentID` = 2 OR `p`.`ParentID` = 3) AND (`p`.`ParentID` = 3 OR `p`.`ParentID` = 1)

