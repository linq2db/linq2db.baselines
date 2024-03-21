BeforeExecute
-- MySqlConnector MySql
DECLARE @p VarChar(3) -- String
SET     @p = '123'

SELECT
	`p`.`PersonID`,
	Concat('123', `p`.`FirstName`, '0123451234')
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND CASE
		WHEN Locate(@p, Left(Concat('123', `p`.`FirstName`, '0123451234'), 11), 6) = 0
			THEN -1
		ELSE 11 - Locate('321', Reverse(Substring(Concat('123', `p`.`FirstName`, '0123451234'), 6, 6))) - 2
	END = 8

