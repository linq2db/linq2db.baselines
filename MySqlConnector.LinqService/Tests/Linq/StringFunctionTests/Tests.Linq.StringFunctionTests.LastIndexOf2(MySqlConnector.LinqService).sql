BeforeExecute
-- MySqlConnector MySql
DECLARE @p VarChar(3) -- String
SET     @p = '123'

SELECT
	`p`.`PersonID`,
	Concat('123', `p`.`FirstName`, '012345')
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND CASE
		WHEN Locate(@p, Concat('123', `p`.`FirstName`, '012345'), 6) = 0
			THEN -1
		ELSE Char_Length(Concat('123', `p`.`FirstName`, '012345')) - Locate('321', Reverse(Substring(Concat('123', `p`.`FirstName`, '012345'), 6, Char_Length(Concat('123', `p`.`FirstName`, '012345')) - 5))) - 2
	END = 8

