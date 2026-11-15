-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Gender String(1) -- AnsiStringFixedLength
SET     @Gender = 'F'

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	`p`.`Gender` = @Gender
ORDER BY
	`p`.`PersonID`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Gender String(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	`p`.`Gender` = @Gender
ORDER BY
	`p`.`PersonID`

