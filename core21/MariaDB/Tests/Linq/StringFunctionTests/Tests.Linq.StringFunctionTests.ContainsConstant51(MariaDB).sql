BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @ps_1 VarChar(4) -- String
SET     @ps_1 = '%~[%'

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND '123[456' LIKE @ps_1 ESCAPE '~'

