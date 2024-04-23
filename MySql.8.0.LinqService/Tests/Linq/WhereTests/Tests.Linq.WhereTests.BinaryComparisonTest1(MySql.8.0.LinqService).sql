BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`Person` `_`
			WHERE
				CASE
					WHEN `_`.`FirstName` = `_`.`FirstName` THEN 1
					ELSE 0
				END = CASE
					WHEN (`_`.`MiddleName` <> `_`.`LastName` OR `_`.`MiddleName` IS NULL)
						THEN 1
					ELSE 0
				END
		)
			THEN 1
		ELSE 0
	END as `c1`

