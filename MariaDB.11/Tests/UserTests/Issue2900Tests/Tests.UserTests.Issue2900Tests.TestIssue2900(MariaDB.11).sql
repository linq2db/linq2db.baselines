BeforeExecute
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
	`t1`.`cond_1`,
	`t1`.`cond`
FROM
	`Request` `a`
		LEFT JOIN (
			SELECT
				`a_Metrics`.`Value` as `cond`,
				`a_Metrics`.`Value` IS NOT NULL as `cond_1`,
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

