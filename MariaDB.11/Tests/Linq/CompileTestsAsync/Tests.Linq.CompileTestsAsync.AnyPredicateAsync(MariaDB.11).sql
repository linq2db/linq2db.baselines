BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @p Int32
SET     @p = 2

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`AsyncDataTable` `c_1`
		WHERE
			`c_1`.`Id` = @p
	) as `c1`

