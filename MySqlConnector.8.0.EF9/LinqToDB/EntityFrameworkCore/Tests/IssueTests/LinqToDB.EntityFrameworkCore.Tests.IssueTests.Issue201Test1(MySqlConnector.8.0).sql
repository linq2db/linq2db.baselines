-- MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Parents` `x`
WHERE
	(
		SELECT
			`a_Children`.`IsActive`
		FROM
			`Children` `a_Children`
		WHERE
			`x`.`Id` = `a_Children`.`ParentId`
		LIMIT 1
	) = 0



