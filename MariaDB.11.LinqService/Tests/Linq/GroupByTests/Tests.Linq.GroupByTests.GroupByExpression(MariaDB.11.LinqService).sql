BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @defValue Int32
SET     @defValue = 10

SELECT
	Coalesce(MIN(`gr`.`ParentID`), @defValue)
FROM
	`Parent` `gr`

