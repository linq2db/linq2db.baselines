BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	EXISTS(
		SELECT 
			*
		FROM
			`Parent` `p`
	) as `c1`

