-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`m_1`.`ParentID`,
	`d`.`ParentID`
FROM
	`Parent` `m_1`
		INNER JOIN `NoSuchTable` `d` ON `m_1`.`ParentID` = `d`.`ParentID`

