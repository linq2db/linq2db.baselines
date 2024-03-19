BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @p VarChar(1) -- String
SET     @p = 'e'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	CASE
		WHEN 1 = 0 THEN 2
		ELSE Locate(@p, `p`.`LastName`, 3) - 1
	END = 4 AND
	`p`.`PersonID` = 2

