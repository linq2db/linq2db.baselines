BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @p Int32
SET     @p = 2

SELECT
	Substring('123', 2, @p) as `c1`

