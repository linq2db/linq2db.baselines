BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `AggregationData`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `AggregationData`
(
	`GroupId`   INT    NOT NULL,
	`DataValue` DOUBLE     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `AggregationData`
(
	`GroupId`,
	`DataValue`
)
VALUES
(1,1),
(1,NULL),
(1,3),
(1,1),
(1,5),
(1,6),
(2,7),
(2,8),
(2,9),
(2,NULL),
(2,11),
(2,7),
(3,13),
(3,16),
(3,16),
(3,16),
(3,NULL),
(3,18)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`g_1`.`GroupId`,
	MIN(`g_1`.`DataValue`),
	MIN(`g_1`.`DataValue`),
	MIN(CASE
		WHEN `g_1`.`DataValue` % 2 = 0 THEN `g_1`.`DataValue`
		ELSE NULL
	END),
	MIN(CASE
		WHEN `g_1`.`DataValue` % 2 = 0 THEN `g_1`.`DataValue`
		ELSE NULL
	END),
	MIN(DISTINCT `g_1`.`DataValue`),
	MIN(DISTINCT CASE
		WHEN `g_1`.`DataValue` % 2 = 0 THEN `g_1`.`DataValue`
		ELSE NULL
	END),
	MIN(DISTINCT CASE
		WHEN `g_1`.`DataValue` % 2 = 0 THEN `g_1`.`DataValue`
		ELSE NULL
	END)
FROM
	`AggregationData` `g_1`
GROUP BY
	`g_1`.`GroupId`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`GroupId`,
	`t1`.`DataValue`
FROM
	`AggregationData` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `AggregationData`

