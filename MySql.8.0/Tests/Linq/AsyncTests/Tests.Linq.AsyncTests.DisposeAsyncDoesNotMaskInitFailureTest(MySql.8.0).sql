-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`m_1`.`ParentID`,
	`d`.`ParentID`
FROM
	`Parent` `m_1`
		INNER JOIN `NoSuchTable` `d` ON `m_1`.`ParentID` = `d`.`ParentID`

