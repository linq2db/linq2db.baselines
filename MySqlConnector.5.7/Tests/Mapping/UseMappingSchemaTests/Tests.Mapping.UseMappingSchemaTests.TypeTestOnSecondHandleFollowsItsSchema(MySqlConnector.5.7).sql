-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`s`.`Id`
FROM
	`Parent` `p`
		INNER JOIN `SourceSchemaShape` `s` ON `p`.`ParentID` = `s`.`Id`
WHERE
	`s`.`Kind` = 'C1'

