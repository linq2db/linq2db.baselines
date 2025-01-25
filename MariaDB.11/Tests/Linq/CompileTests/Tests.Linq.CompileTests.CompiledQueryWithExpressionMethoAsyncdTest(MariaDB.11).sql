BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 1

SELECT
	`x`.`ParentID`,
	`x`.`Value1`
FROM
	`Parent` `x`
WHERE
	`x`.`ParentID` = @ParentID
ORDER BY
	`x`.`ParentID` DESC
LIMIT 1

