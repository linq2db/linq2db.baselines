BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Person` `t1`
		WHERE
			`t1`.`MiddleName` = `t1`.`LastName`
	) as `c1`

