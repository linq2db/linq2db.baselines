-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			Concat('test', `a_Patient`.`Diagnosis`) as `Key_1`
		FROM
			`Person` `t1`
				LEFT JOIN `Patient` `a_Patient` ON `t1`.`PersonID` = `a_Patient`.`PersonID`
	) `t2`

