BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	`r`.`Value`
FROM
	`TakeSkipClass` `r`
LIMIT @take

