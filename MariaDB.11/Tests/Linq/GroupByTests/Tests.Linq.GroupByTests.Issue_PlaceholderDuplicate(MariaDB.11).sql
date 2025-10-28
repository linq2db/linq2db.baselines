BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @take Int32
SET     @take = 100

SELECT
	`r`.`PersonID`,
	`r`.`PersonID`
FROM
	`Person` `r`
GROUP BY
	`r`.`PersonID`,
	`r`.`PersonID`
ORDER BY
	`r`.`PersonID`
LIMIT @take

