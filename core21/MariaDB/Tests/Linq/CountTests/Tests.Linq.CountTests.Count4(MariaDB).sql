BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	(
		SELECT 
			Count(*)
		FROM
			`Child` `t1`
	)
FROM
	`Parent` `p`

