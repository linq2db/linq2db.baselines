-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @take Int32
SET     @take = 2

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY `e`.`Value1` ORDER BY `e`.`ParentID` DESC) as `RowNumber`,
			`e`.`ParentID`,
			`e`.`Value1`
		FROM
			`Parent` `e`
	) `t1`
WHERE
	`t1`.`RowNumber` = 1
ORDER BY
	`t1`.`ParentID` DESC
LIMIT @take

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

