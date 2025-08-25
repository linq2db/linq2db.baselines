BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @id Int32
SET     @id = 1

SELECT
	`g_1`.`ParentID`
FROM
	`Child` `g_1`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Parent` `t`
		WHERE
			`t`.`ParentID` = @id AND `t`.`ParentID` = `g_1`.`ParentID`
	)
GROUP BY
	`g_1`.`ParentID`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @id Int32
SET     @id = 2

SELECT
	`g_1`.`ParentID`
FROM
	`Child` `g_1`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Parent` `t`
		WHERE
			`t`.`ParentID` = @id AND `t`.`ParentID` = `g_1`.`ParentID`
	)
GROUP BY
	`g_1`.`ParentID`

