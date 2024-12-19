BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Value1 Int32
SET     @Value1 = 4

SELECT DISTINCT
	Coalesce(`p`.`Value1`, `p`.`ParentID` % 2),
	@Value1
FROM
	`Parent` `p`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Value1 Int32
SET     @Value1 = 4

SELECT DISTINCT
	Coalesce(`p`.`Value1`, `p`.`ParentID` % 2),
	@Value1
FROM
	`Parent` `p`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

