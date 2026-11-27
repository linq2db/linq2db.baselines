-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT DISTINCT
	(
		SELECT
			`cc`.`Name`
		FROM
			`LookupCity` `cc`
		WHERE
			`cc`.`Code` = `t1`.`Code` OR `cc`.`Code` IS NULL AND `t1`.`Code` IS NULL
		LIMIT 1
	)
FROM
	`LookupPerson` `t1`

