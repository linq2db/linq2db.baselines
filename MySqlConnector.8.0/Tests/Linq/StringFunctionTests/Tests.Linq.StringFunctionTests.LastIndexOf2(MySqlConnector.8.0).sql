-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p_1`.`ID`,
	`p_1`.`FirstName`
FROM
	(
		SELECT
			Concat('123', `p`.`FirstName`, '012345') as `FirstName`,
			`p`.`FirstName` as `FirstName_1`,
			`p`.`PersonID` as `ID`
		FROM
			`Person` `p`
		WHERE
			`p`.`PersonID` = 1
	) `p_1`
WHERE
	CHAR_LENGTH(Concat('123', `p_1`.`FirstName_1`, '012345')) - Locate('321', Reverse(Substring(`p_1`.`FirstName`, 6, CHAR_LENGTH(Concat('123', `p_1`.`FirstName_1`, '012345')) - 5))) = 10 AND
	Locate('123', `p_1`.`FirstName`, 6) <> 0

