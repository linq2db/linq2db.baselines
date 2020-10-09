BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	EXISTS(
		SELECT 
			*
		FROM
			`Child` `t1`
	) as `c1`

