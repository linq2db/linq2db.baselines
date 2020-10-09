BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @p1 UByte -- Boolean
SET     @p1 = 0
DECLARE @Length_1 Int32
SET     @Length_1 = 3

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
		WHEN @p1 = 1 THEN 5
		WHEN Locate('123', Left(`p_1`.`FirstName`, 11), 6) = 0
			THEN -1
		ELSE (11 - Locate('321', Reverse(Substring(`p_1`.`FirstName`, 6, 6)))) - @Length_1 + 1
	END = 8

