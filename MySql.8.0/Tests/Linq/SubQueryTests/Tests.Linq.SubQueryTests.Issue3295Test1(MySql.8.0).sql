-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	CASE
		WHEN `t1`.`PersonID` IS NOT NULL THEN `t1`.`PersonID`
		ELSE `x`.`PersonID`
	END,
	CASE
		WHEN `t1`.`PersonID` IS NOT NULL THEN `t1`.`Diagnosis`
		ELSE 'abc'
	END
FROM
	`Person` `x`
		LEFT JOIN LATERAL (
			SELECT
				`y`.`PersonID`,
				`y`.`Diagnosis`
			FROM
				`Patient` `y`
			WHERE
				`y`.`PersonID` = `x`.`PersonID`
			LIMIT 1
		) `t1` ON 1=1
WHERE
	`t1`.`PersonID` IS NULL OR `t1`.`Diagnosis` = 'abc'

