BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @p VarChar(3) -- String
SET     @p = '123'

SELECT
	`p`.`PersonID`,
	Concat('123', `p`.`FirstName`, '012345')
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND Char_Length(Concat('123', `p`.`FirstName`, '012345')) - Locate('321', Reverse(Substring(Concat('123', `p`.`FirstName`, '012345'), 6, Char_Length(Concat('123', `p`.`FirstName`, '012345')) - 5))) = 10 AND
	(Locate(@p, Concat('123', `p`.`FirstName`, '012345'), 6) <> 0 OR Locate(@p, Concat('123', `p`.`FirstName`, '012345'), 6) IS NULL)

