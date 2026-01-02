-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @addMask Int32
SET     @addMask = 3
DECLARE @removeMask Int32
SET     @removeMask = 12

UPDATE
	`WarehouseTableDto` `t1`
SET
	`t1`.`Value` = (`t1`.`Value` | @addMask) & (~@removeMask)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`WarehouseTableDto` `t1`
LIMIT 2

