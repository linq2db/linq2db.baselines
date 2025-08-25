BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`t1`.`FirstName`,
	`t1`.`ID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	(
		SELECT
			LOCATE('Jo', `p`.`FirstName`) > 0 as `Field1`,
			`p`.`FirstName`,
			`p`.`PersonID` as `ID`,
			`p`.`LastName`,
			`p`.`MiddleName`,
			`p`.`Gender`
		FROM
			`Person` `p`
	) `t1`
WHERE
	`t1`.`Field1`
ORDER BY
	`t1`.`Field1`

