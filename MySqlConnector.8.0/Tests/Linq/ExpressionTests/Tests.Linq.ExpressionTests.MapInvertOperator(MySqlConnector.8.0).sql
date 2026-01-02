-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @addMask Int32
SET     @addMask = 3
DECLARE @removeMask Int32
SET     @removeMask = 12

UPDATE
	`WarehouseTableDto` `t1`
SET
	`t1`.`Value` = (`t1`.`Value` | @addMask) & (~@removeMask)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`WarehouseTableDto` `t1`
LIMIT 2

