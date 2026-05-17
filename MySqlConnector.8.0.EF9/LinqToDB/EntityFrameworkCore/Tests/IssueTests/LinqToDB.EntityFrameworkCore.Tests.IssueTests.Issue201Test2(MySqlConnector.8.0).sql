-- MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Parents` `x`
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			`Children` `y`
		WHERE
			`x`.`Id` = `y`.`ParentId` AND `y`.`IsActive`
	)



