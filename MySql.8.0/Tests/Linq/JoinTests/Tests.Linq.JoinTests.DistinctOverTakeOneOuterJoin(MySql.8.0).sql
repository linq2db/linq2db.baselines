-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

