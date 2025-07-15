BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @n Int32
SET     @n = 3

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			`Child` `c_1`
		WHERE
			`c_1`.`ParentID` <= @n
	) as `c1`

