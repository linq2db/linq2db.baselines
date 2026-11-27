-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @take Int32
SET     @take = 2

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
ORDER BY
	`t1`.`ChildID`
LIMIT @take

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	(
		SELECT
			`t1`.`ParentID`
		FROM
			`Parent` `t1`
		ORDER BY
			`t1`.`ParentID`
		LIMIT 1
	) as `FirstId`

