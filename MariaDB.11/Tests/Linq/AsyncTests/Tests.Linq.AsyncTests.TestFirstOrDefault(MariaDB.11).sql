BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @p Int32
SET     @p = 1
DECLARE @p_1 Int32
SET     @p_1 = 2
DECLARE @p_2 Int32
SET     @p_2 = 3
DECLARE @param Int32
SET     @param = 4

SELECT
	`o`.`ParentID`,
	`o`.`Value1`
FROM
	`Parent` `o`
WHERE
	`o`.`ParentID` IN (@p, @p_1, @p_2) OR `o`.`ParentID` = @param
LIMIT 1

