-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @addMask Int32
SET     @addMask = 3
DECLARE @removeMask Int32
SET     @removeMask = 12

UPDATE
	`WarehouseTableDto` `t1`
SET
	`t1`.`Value` = CAST(CAST(`t1`.`Value` | @addMask AS SIGNED) & CAST(~@removeMask AS SIGNED) AS SIGNED)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`WarehouseTableDto` `t1`
LIMIT 2

