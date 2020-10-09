BeforeExecute
-- MySql MySql.Official MySql

SELECT 
	Count(*)
FROM
	( 
		SELECT 
			0 as `c1`
		FROM
			`Person` `selectParam`
				LEFT JOIN `Patient` `a_Patient` ON `selectParam`.`PersonID` = `a_Patient`.`PersonID`
		GROUP BY
			Concat('test', `a_Patient`.`Diagnosis`)
	) `t1`

BeforeExecute
-- MySql MySql.Official MySql

SELECT 
	Count(*)
FROM
	( 
		SELECT 
			0 as `c1`
		FROM
			`Person` `selectParam`
				LEFT JOIN `Patient` `a_Patient` ON `selectParam`.`PersonID` = `a_Patient`.`PersonID`
		GROUP BY
			Concat('test', `a_Patient`.`Diagnosis`)
	) `t1`

