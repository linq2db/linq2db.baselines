BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`PersonID`,
	`patient_1`.`PersonID`
FROM
	`Person` `t1`
		LEFT JOIN `Patient` `patient_1` ON `t1`.`PersonID` = `patient_1`.`PersonID`
ORDER BY
	`t1`.`MiddleName`

