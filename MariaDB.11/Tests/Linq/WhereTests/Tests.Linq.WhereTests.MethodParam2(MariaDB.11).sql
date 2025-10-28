BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @p Int32
SET     @p = 1

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = @p

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @p Int32
SET     @p = 2

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = @p

