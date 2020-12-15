BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @param VarChar(4) -- String
SET     @param = 'JOHN'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	(Lower(`p`.`FirstName`) = Lower(@param) OR Lower(`p`.`FirstName`) IS NULL AND Lower(@param) IS NULL) AND
	`p`.`PersonID` = 1

