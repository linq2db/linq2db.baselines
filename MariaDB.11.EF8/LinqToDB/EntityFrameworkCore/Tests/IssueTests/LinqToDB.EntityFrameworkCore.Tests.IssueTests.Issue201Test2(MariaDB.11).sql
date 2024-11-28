--  MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`Parents` `x`
WHERE
	NOT EXISTS(
		SELECT
			1
		FROM
			`Children` `y`
		WHERE
			`x`.`Id` = `y`.`ParentId` AND `y`.`IsActive` = 1
	)



