BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`nm`.`MiddleName`
FROM
	(
		SELECT
			CHAR_LENGTH(`p`.`MiddleName`) as `Length_1`,
			`p`.`MiddleName`
		FROM
			`Person` `p`
	) `nm`
WHERE
	`nm`.`Length_1` <> 0 OR `nm`.`Length_1` IS NULL

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

