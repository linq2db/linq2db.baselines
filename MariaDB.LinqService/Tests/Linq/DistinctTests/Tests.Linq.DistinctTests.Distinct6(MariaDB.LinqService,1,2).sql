BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Value1 Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce(`p`.`Value1`, `p`.`ParentID`),
	@Value1
FROM
	`Parent` `p`

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

