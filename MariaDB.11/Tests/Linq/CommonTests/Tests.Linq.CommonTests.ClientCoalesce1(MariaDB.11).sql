BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Value1 Int32
SET     @Value1 = 100

SELECT
	`x`.`Value1`
FROM
	`Parent` `x`
WHERE
	Coalesce(`x`.`Value1`, @Value1) > 10

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p`.`Value1`
FROM
	`Parent` `p`

