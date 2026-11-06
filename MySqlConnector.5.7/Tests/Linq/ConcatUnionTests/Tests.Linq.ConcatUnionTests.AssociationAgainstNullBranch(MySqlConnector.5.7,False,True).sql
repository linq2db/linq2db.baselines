-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`p`.`PersonID`,
	CAST(NULL AS SIGNED),
	CAST(NULL AS SIGNED),
	CAST(NULL AS CHAR(255))
FROM
	`Person` `p`
UNION ALL
SELECT
	`p_1`.`PersonID`,
	`a_Patient`.`PersonID`,
	`a_Patient`.`PersonID`,
	`a_Patient`.`Diagnosis`
FROM
	`Person` `p_1`
		LEFT JOIN `Patient` `a_Patient` ON `p_1`.`PersonID` = `a_Patient`.`PersonID`

