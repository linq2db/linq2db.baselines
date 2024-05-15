BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @ParentID Int32
SET     @ParentID = 1001
DECLARE @Value1 Int32
SET     @Value1 = NULL

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1001

