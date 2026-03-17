-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t3`.`Id`,
	`t3`.`ResourceID`,
	`t3`.`StorageShelfSourceID`,
	`t3`.`RPSourceID`,
	`t3`.`StorageShelfDestinationID`,
	`t3`.`RPDestinationID`,
	`t3`.`RPOrigDestinationID`,
	`t3`.`OutfeedTransportOrderID`,
	`res_1`.`Id`
FROM
	(
		SELECT
			`g_1`.`Id`,
			`g_1`.`ResourceID`,
			`g_1`.`StorageShelfSourceID`,
			`g_1`.`RPSourceID`,
			`g_1`.`StorageShelfDestinationID`,
			`g_1`.`RPDestinationID`,
			`g_1`.`RPOrigDestinationID`,
			`g_1`.`OutfeedTransportOrderID`
		FROM
			`GlobalTaskDTO` `g_1`
		UNION
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
			`WMS_GlobalTaskA` `t1`
	) `t3`
		LEFT JOIN (
			SELECT
				`res`.`Id`
			FROM
				`WmsLoadCarrierDTO` `res`
			UNION
			SELECT
				`t2`.`Id`
			FROM
				`WMS_LoadCarrierA` `t2`
		) `res_1` ON `t3`.`ResourceID` = `res_1`.`Id`

