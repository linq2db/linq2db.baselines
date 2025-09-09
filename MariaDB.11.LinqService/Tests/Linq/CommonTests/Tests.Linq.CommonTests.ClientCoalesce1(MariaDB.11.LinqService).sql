BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @Value1 Int32
SET     @Value1 = 100

SELECT
	`x`.`Value1`
FROM
	`Parent` `x`
WHERE
	Coalesce(`x`.`Value1`, @Value1) > 10

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	`p`.`Value1`
FROM
	`Parent` `p`

