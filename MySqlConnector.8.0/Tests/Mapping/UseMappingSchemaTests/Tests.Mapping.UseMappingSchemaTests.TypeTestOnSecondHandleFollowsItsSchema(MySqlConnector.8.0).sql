-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`s`.`Id`
FROM
	`Parent` `p`
		INNER JOIN `SourceSchemaShape` `s` ON `p`.`ParentID` = `s`.`Id`
WHERE
	`s`.`Kind` = 'C1'

