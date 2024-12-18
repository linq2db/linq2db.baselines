BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `GlobalTaskDTO`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `GlobalTaskDTO`
(
	`Id`                        CHAR(36) NOT NULL,
	`ResourceID`                CHAR(36) NOT NULL,
	`StorageShelfSourceID`      CHAR(36)     NULL,
	`RPSourceID`                CHAR(36)     NULL,
	`StorageShelfDestinationID` CHAR(36)     NULL,
	`RPDestinationID`           CHAR(36)     NULL,
	`RPOrigDestinationID`       CHAR(36)     NULL,
	`OutfeedTransportOrderID`   CHAR(36)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `WMS_GlobalTaskA`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `WMS_GlobalTaskA`
(
	`Id`                        CHAR(36) NOT NULL,
	`ResourceID`                CHAR(36) NOT NULL,
	`StorageShelfSourceID`      CHAR(36)     NULL,
	`RPSourceID`                CHAR(36)     NULL,
	`StorageShelfDestinationID` CHAR(36)     NULL,
	`RPDestinationID`           CHAR(36)     NULL,
	`RPOrigDestinationID`       CHAR(36)     NULL,
	`OutfeedTransportOrderID`   CHAR(36)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `WmsResourcePointDTO`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `WmsResourcePointDTO`
(
	`Id` CHAR(36) NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `StorageShelfDTO`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `StorageShelfDTO`
(
	`Id` CHAR(36) NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `OutfeedTransportOrderDTO`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `OutfeedTransportOrderDTO`
(
	`Id` CHAR(36) NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `WMS_OutfeedTransportOrderA`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `WMS_OutfeedTransportOrderA`
(
	`Id` CHAR(36) NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `WmsLoadCarrierDTO`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `WmsLoadCarrierDTO`
(
	`Id` CHAR(36) NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `WMS_ResourceA`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `WMS_ResourceA`
(
	`Id` CHAR(36) NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`tp12`.`Id`,
	`tp12`.`ResourceID`,
	`tp12`.`StorageShelfSourceID`,
	`tp12`.`RPSourceID`,
	`tp12`.`StorageShelfDestinationID`,
	`tp12`.`RPDestinationID`,
	`tp12`.`RPOrigDestinationID`,
	`tp12`.`OutfeedTransportOrderID`,
	`res_1`.`Id`,
	`source`.`Id`,
	`sourceShelf`.`Id`,
	`dest`.`Id`,
	`destShelf`.`Id`,
	`origdest`.`Id`,
	`outfeed`.`Id`
FROM
	(
		SELECT
			`tp0`.`Id`,
			`tp0`.`ResourceID`,
			`tp0`.`StorageShelfSourceID`,
			`tp0`.`RPSourceID`,
			`tp0`.`StorageShelfDestinationID`,
			`tp0`.`RPDestinationID`,
			`tp0`.`RPOrigDestinationID`,
			`tp0`.`OutfeedTransportOrderID`
		FROM
			`GlobalTaskDTO` `tp0`
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
	) `tp12`
		LEFT JOIN `WmsResourcePointDTO` `source` ON `tp12`.`RPSourceID` = `source`.`Id` AND `tp12`.`RPSourceID` IS NOT NULL
		LEFT JOIN `StorageShelfDTO` `sourceShelf` ON `tp12`.`StorageShelfSourceID` = `sourceShelf`.`Id` AND `tp12`.`StorageShelfSourceID` IS NOT NULL
		LEFT JOIN `WmsResourcePointDTO` `dest` ON `tp12`.`RPDestinationID` = `dest`.`Id` AND `tp12`.`RPDestinationID` IS NOT NULL
		LEFT JOIN `StorageShelfDTO` `destShelf` ON `tp12`.`StorageShelfDestinationID` = `destShelf`.`Id` AND `tp12`.`StorageShelfDestinationID` IS NOT NULL
		LEFT JOIN `WmsResourcePointDTO` `origdest` ON `tp12`.`RPOrigDestinationID` = `origdest`.`Id` AND `tp12`.`RPOrigDestinationID` IS NOT NULL
		LEFT JOIN (
			SELECT
				`res`.`Id`
			FROM
				`WmsLoadCarrierDTO` `res`
			UNION
			SELECT
				`t2`.`Id`
			FROM
				`WMS_ResourceA` `t2`
		) `res_1` ON `tp12`.`ResourceID` = `res_1`.`Id`
		LEFT JOIN (
			SELECT
				`outfeed1`.`Id`
			FROM
				`OutfeedTransportOrderDTO` `outfeed1`
			UNION
			SELECT
				`t3`.`Id`
			FROM
				`WMS_OutfeedTransportOrderA` `t3`
		) `outfeed` ON `tp12`.`OutfeedTransportOrderID` = `outfeed`.`Id` AND `tp12`.`OutfeedTransportOrderID` IS NOT NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `WMS_ResourceA`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `WmsLoadCarrierDTO`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `WMS_OutfeedTransportOrderA`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `OutfeedTransportOrderDTO`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `StorageShelfDTO`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `WmsResourcePointDTO`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `WMS_GlobalTaskA`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `GlobalTaskDTO`

