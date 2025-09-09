BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	`t1`.`Id`,
	`t1`.`ResourceID`,
	`t1`.`StorageShelfSourceID`,
	`t1`.`RPSourceID`,
	`t1`.`StorageShelfDestinationID`,
	`t1`.`RPDestinationID`,
	`t1`.`RPOrigDestinationID`,
	`t1`.`OutfeedTransportOrderID`
FROM
	`GlobalTaskDTO` `t1`
UNION
SELECT
	`t2`.`Id`,
	`t2`.`ResourceID`,
	`t2`.`StorageShelfSourceID`,
	`t2`.`RPSourceID`,
	`t2`.`StorageShelfDestinationID`,
	`t2`.`RPDestinationID`,
	`t2`.`RPOrigDestinationID`,
	`t2`.`OutfeedTransportOrderID`
FROM
	`WMS_GlobalTaskA` `t2`

