-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`p`.`ParentID`,
	ROW_NUMBER() OVER (),
	ROW_NUMBER() OVER (ORDER BY `p`.`ParentID`),
	ROW_NUMBER() OVER (ORDER BY `p`.`ParentID`)
FROM
	`Parent` `p`

