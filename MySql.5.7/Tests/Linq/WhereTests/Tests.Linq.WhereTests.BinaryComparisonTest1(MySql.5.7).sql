-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Person` `t1`
		WHERE
			`t1`.`MiddleName` <> `t1`.`LastName` OR `t1`.`MiddleName` IS NULL
	) as `c1`

