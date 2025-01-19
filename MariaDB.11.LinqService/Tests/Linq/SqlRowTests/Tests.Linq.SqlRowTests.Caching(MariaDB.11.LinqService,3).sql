BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @r3 Int32
SET     @r3 = 3

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`One`, `i`.`Two`, `i`.`Three`) = (`i`.`One`, `i`.`One` * 2, @r3)

