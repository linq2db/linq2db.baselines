-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`r_1`.`Diagnosis`,
	`a_Person`.`FirstName`
FROM
	(
		SELECT
			`r`.`PersonID`,
			`r`.`Diagnosis`
		FROM
			`Patient` `r`
		UNION ALL
		SELECT
			`t1`.`PersonID`,
			`t1`.`Diagnosis`
		FROM
			`Patient` `t1`
	) `r_1`
		INNER JOIN `Person` `a_Person` ON `r_1`.`PersonID` = `a_Person`.`PersonID`

