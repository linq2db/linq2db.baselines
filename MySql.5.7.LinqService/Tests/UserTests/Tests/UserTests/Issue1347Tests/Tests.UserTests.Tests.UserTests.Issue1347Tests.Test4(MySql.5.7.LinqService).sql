BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `GlobalTaskDTO`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `WMS_GlobalTaskA`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `WMS_GlobalTaskA`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `GlobalTaskDTO`

