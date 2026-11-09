-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @gender VarChar(1) -- AnsiString
SET     @gender = 'M'

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	@gender = CASE
		WHEN `p`.`PersonID` > 2 THEN 'M'
		ELSE 'F'
	END
ORDER BY
	`p`.`PersonID`

