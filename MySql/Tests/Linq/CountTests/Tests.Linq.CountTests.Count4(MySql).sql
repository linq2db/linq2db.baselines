BeforeExecute
-- MySql MySql.Official MySql

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `t1`
	)
FROM
	`Parent` `p`

