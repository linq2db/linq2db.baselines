BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Person` `t1`
		WHERE
			NOT (`t1`.`MiddleName` <> `t1`.`LastName` OR `t1`.`MiddleName` IS NULL)
	) as `c1`

