BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	MIN(`gr`.`ParentID`),
	MAX(`gr`.`ParentID`)
FROM
	`Parent` `gr`

