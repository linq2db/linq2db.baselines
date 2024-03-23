BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Value1 Int32
SET     @Value1 = 1

UPDATE
	`Parent` `p`
SET
	`p`.`Value1` = @Value1
WHERE
	`p`.`ParentID` = 1

BeforeExecute
BeginTransaction
BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Value1 Int32
SET     @Value1 = NULL

UPDATE
	`Parent` `p`
SET
	`p`.`Value1` = @Value1
WHERE
	`p`.`ParentID` = 1

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1
LIMIT 1

BeforeExecute
RollbackTransaction
BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1
LIMIT 1

