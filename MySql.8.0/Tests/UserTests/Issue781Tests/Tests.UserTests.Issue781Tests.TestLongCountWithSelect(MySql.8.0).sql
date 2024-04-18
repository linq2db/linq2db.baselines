BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Count(*)
FROM
	(
		SELECT
			0 as `c1`
		FROM
			(
				SELECT
					Concat('test', `a_Patient`.`Diagnosis`) as `Key_1`
				FROM
					`Person` `selectParam`
						LEFT JOIN `Patient` `a_Patient` ON `selectParam`.`PersonID` = `a_Patient`.`PersonID`
			) `t1`
		GROUP BY
			`t1`.`Key_1`
	) `t2`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Count(*)
FROM
	(
		SELECT
			0 as `c1`
		FROM
			(
				SELECT
					Concat('test', `a_Patient`.`Diagnosis`) as `Key_1`
				FROM
					`Person` `selectParam`
						LEFT JOIN `Patient` `a_Patient` ON `selectParam`.`PersonID` = `a_Patient`.`PersonID`
			) `t1`
		GROUP BY
			`t1`.`Key_1`
	) `t2`

