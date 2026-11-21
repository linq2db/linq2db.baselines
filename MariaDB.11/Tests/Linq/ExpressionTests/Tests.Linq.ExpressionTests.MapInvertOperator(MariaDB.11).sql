-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @addMask Int32
SET     @addMask = 3
DECLARE @removeMask Int32
SET     @removeMask = 12

UPDATE
	`WarehouseTableDto` `t1`
SET
	`t1`.`Value` = CAST(CAST(`t1`.`Value` | @addMask AS SIGNED) & CAST(~@removeMask AS SIGNED) AS SIGNED)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`WarehouseTableDto` `t1`
LIMIT 2

