BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @p Int32
SET     @p = 2

SELECT
	MIN(`c_1`.`Id`)
FROM
	`AsyncDataTable` `c_1`
WHERE
	`c_1`.`Id` > @p

