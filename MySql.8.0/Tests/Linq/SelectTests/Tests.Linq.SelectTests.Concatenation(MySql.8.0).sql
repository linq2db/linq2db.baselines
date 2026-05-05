-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p_1`.`ID`,
	`p_1`.`FirstName`
FROM
	(
		SELECT
			Concat('123', `p`.`FirstName`, '456') as `FirstName`,
			`p`.`PersonID` as `ID`
		FROM
			`Person` `p`
		WHERE
			`p`.`PersonID` = 1
	) `p_1`
WHERE
	`p_1`.`FirstName` = '123John456'

