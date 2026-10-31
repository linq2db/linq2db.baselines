-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @bound VarChar(5) -- AnsiString
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	`ConvertedConcatTitleRow` `p`
WHERE
	(CONCAT(`p`.`Conv`, `p`.`Title`)) = @bound

