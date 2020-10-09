BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @t VarChar(1) -- String
SET     @t = 'A'

SELECT 
	`y`.`FirstName`
FROM
	`Person` `y`
UNION ALL
SELECT 
	`x`.`FirstName`
FROM
	`Person` `x`
WHERE
	`x`.`FirstName` = @t

