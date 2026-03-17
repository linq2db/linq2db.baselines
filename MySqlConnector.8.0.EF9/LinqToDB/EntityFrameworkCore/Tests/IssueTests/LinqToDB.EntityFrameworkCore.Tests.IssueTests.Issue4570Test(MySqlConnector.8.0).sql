-- MySql.8.0.MySqlConnector MySql80

SELECT
	1
FROM
	`Parents` `ua`
WHERE
	`ua`.`ParentId` = 55377 AND EXISTS(
		SELECT
			*
		FROM
			`Parents` `t1`
	)



