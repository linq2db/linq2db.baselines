BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Length_1 Int32
SET     @Length_1 = 9

SELECT
	`p_1`.`ID`,
	`p_1`.`FirstName_1`
FROM
	(
		SELECT
			Concat('123', `p`.`FirstName`, '0123451234') as `FirstName`,
			`p`.`PersonID` as `ID`,
			`p`.`FirstName` as `FirstName_1`
		FROM
			`Person` `p`
		WHERE
			`p`.`PersonID` = 1
	) `p_1`
WHERE
	CASE
		WHEN Locate('123', Left(`p_1`.`FirstName`, 11), 6) = 0
			THEN -1
		ELSE @Length_1 - Locate('321', Reverse(Substring(`p_1`.`FirstName`, 6, 6)))
	END = 8

