-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p_1`.`ID`,
	`p_1`.`FirstName`
FROM
	(
		SELECT
			Concat('123', `p`.`FirstName`, '0123451234') as `FirstName`,
			`p`.`PersonID` as `ID`
		FROM
			`Person` `p`
		WHERE
			`p`.`PersonID` = 1
	) `p_1`
WHERE
	1 = Locate('321', Reverse(Substring(`p_1`.`FirstName`, 6, 6))) AND
	Locate('123', Left(`p_1`.`FirstName`, 11), 6) <> 0

