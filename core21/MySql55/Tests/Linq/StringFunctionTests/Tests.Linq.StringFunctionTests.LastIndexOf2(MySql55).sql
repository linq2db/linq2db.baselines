BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	CASE
		WHEN Locate('123', Concat('123', `p`.`FirstName`, '012345'), 6) = 0
			THEN -1
		ELSE Char_Length(Concat('123', `p`.`FirstName`, '012345')) - Locate('321', Reverse(Substring(Concat('123', `p`.`FirstName`, '012345'), 6, Char_Length(Concat('123', `p`.`FirstName`, '012345')) - 5))) - 2
	END = 8 AND
	`p`.`PersonID` = 1

