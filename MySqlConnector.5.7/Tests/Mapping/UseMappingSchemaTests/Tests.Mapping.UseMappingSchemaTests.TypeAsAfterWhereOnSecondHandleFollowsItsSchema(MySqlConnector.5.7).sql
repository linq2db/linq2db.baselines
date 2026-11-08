-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`s`.`Id`,
	CASE
		WHEN `s`.`Kind` = 'C1' THEN `s`.`Kind`
		ELSE NULL
	END
FROM
	`Parent` `x`
		INNER JOIN `SourceSchemaShape` `s` ON `x`.`ParentID` = `s`.`Id`
WHERE
	`s`.`Id` > 0

