﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Request`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Request`
(
	`Id` INT AUTO_INCREMENT NOT NULL,

	CONSTRAINT `PK_Request` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Metric`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Metric`
(
	`Id`        INT    AUTO_INCREMENT NOT NULL,
	`RequestId` INT                   NOT NULL,
	`Value`     DOUBLE                    NULL,

	CONSTRAINT `PK_Metric` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`not_null`,
	`t1`.`Value_1`,
	`t1`.`HasValue`
FROM
	`Request` `a`
		LEFT JOIN (
			SELECT
				CASE
					WHEN `a_Metrics`.`Value` IS NOT NULL THEN CASE
						WHEN `a_Metrics`.`Value` IS NOT NULL THEN 1
						ELSE 0
					END
					ELSE 0
				END as `Value_1`,
				`a_Metrics`.`Value` as `HasValue`,
				1 as `not_null`,
				ROW_NUMBER() OVER (PARTITION BY `a_Metrics`.`RequestId` ORDER BY `a_Metrics`.`RequestId`) as `rn`,
				`a_Metrics`.`RequestId`
			FROM
				`Metric` `a_Metrics`
		) `t1` ON `a`.`Id` = `t1`.`RequestId` AND `t1`.`rn` <= 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Metric`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Request`

