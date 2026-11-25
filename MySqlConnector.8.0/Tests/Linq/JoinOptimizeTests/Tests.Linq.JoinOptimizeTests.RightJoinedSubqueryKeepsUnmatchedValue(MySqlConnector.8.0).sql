-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`s`.`ParentID`,
	CASE
		WHEN `s`.`Value1` IS NULL THEN 'none'
		ELSE NULL
	END
FROM
	`Parent` `x`
		RIGHT JOIN `Parent` `s` ON `s`.`Value1` = `x`.`ParentID`

