﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `O1`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `O1`
(
	`DocEntry`    INT           NOT NULL,
	`BplId`       INT           NOT NULL,
	`ChaveAcesso` VARCHAR(4000)     NULL,
	`DocStatus`   VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `O2`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `O2`
(
	`DocEntry`    INT           NOT NULL,
	`BplId`       INT           NOT NULL,
	`ChaveAcesso` VARCHAR(4000)     NULL,
	`DocStatus`   VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `O3`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `O3`
(
	`DocEntry`    INT           NOT NULL,
	`BplId`       INT           NOT NULL,
	`ChaveAcesso` VARCHAR(4000)     NULL,
	`DocStatus`   VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	`doSap`.`DocEntry`,
	CASE
		WHEN `doSap`.`DocStatus` = 'O'
			THEN 'Aberto'
		ELSE 'Fechado'
	END,
	'Manual/Externo'
FROM
	`O1` `doSap`
UNION
SELECT
	`doSap_1`.`DocEntry`,
	CASE
		WHEN `doSap_1`.`DocStatus` = 'O'
			THEN 'Aberto'
		ELSE 'Fechado'
	END,
	'Manual/Externo'
FROM
	`O2` `doSap_1`
UNION
SELECT
	`doSap_2`.`DocEntry`,
	CASE
		WHEN `doSap_2`.`DocStatus` = 'O'
			THEN 'Aberto'
		ELSE 'Fechado'
	END,
	'Manual/Externo'
FROM
	`O3` `doSap_2`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `O3`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `O2`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `O1`

