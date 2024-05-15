BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`Person` `t1`
			WHERE
				(`t1`.`MiddleName` <> `t1`.`LastName` OR `t1`.`MiddleName` IS NULL)
		)
			THEN 1
		ELSE 0
	END as `c1`

