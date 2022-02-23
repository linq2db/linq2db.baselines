BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`p_1`.`ID`,
	`p_1`.`FirstName_1`
FROM
	(
		SELECT
			Concat('123', `p`.`FirstName`, '012345') as `FirstName`,
			`p`.`PersonID` as `ID`,
			`p`.`FirstName` as `FirstName_1`
		FROM
			`Person` `p`
		WHERE
			`p`.`PersonID` = 1
	) `p_1`
WHERE
	CASE
		WHEN Locate('123', `p_1`.`FirstName`, 6) = 0
			THEN -1
		ELSE Char_Length(`p_1`.`FirstName`) - Locate('321', Reverse(Substring(`p_1`.`FirstName`, 6, Char_Length(`p_1`.`FirstName`) - 5))) - 2
	END = 8

