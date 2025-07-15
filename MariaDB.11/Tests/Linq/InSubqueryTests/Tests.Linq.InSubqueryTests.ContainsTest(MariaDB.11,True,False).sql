BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Child` `c_1`
		WHERE
			1 = `c_1`.`ParentID`
	) as `c1`

