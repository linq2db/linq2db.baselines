BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	(
		SELECT
			Concat('test', `a_Patient`.`Diagnosis`) as `c1`
		FROM
			`Person` `t1`
				LEFT JOIN `Patient` `a_Patient` ON `t1`.`PersonID` = `a_Patient`.`PersonID`
		GROUP BY
			Concat('test', `a_Patient`.`Diagnosis`)
	) `t2`

BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	(
		SELECT
			Concat('test', `a_Patient`.`Diagnosis`) as `c1`
		FROM
			`Person` `t1`
				LEFT JOIN `Patient` `a_Patient` ON `t1`.`PersonID` = `a_Patient`.`PersonID`
		GROUP BY
			Concat('test', `a_Patient`.`Diagnosis`)
	) `t2`

