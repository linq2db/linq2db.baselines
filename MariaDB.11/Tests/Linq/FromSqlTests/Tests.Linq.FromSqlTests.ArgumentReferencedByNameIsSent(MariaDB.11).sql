-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @p Int32
SET     @p = 2

SELECT
	`p`.`PersonID`
FROM
	(
		SELECT * FROM Person WHERE PersonID = @p
	) `p`

