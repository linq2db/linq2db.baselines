-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Rank`,
	`t1`.`FirstName`,
	`t1`.`LastName`
FROM
	(
		SELECT
			CAST(0 AS SIGNED) as `Rank`,
			CAST(NULL AS CHAR(255)) as `FirstName`,
			CAST(NULL AS CHAR(255)) as `LastName`
		FROM
			`Person` `p`
		WHERE
			`p`.`PersonID` < 0
		UNION ALL
		SELECT
			`p_1`.`PersonID` as `Rank`,
			`p_1`.`FirstName`,
			`p_1`.`LastName`
		FROM
			`Person` `p_1`
	) `t1`
ORDER BY
	`t1`.`Rank`,
	`t1`.`FirstName`,
	`t1`.`LastName`

