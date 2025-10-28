BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @filter VarChar(4) -- String
SET     @filter = 'test'

SELECT
	`q`.`Id`,
	`q`.`Name`,
	`q`.`ContactEmail`,
	Coalesce(`q`.`Enabled`, 0)
FROM
	`CustomerBase` `q`
WHERE
	`q`.`ClientType` = 'Client' AND (LOCATE(@filter, `q`.`Name`) > 0 OR LOCATE(@filter, `q`.`ContactEmail`) > 0)

