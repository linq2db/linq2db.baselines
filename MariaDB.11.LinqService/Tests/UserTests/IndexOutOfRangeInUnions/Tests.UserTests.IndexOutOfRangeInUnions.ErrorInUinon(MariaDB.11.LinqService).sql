BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `O1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `O1`
(
	`DocEntry`    INT           NOT NULL,
	`BplId`       INT           NOT NULL,
	`ChaveAcesso` VARCHAR(4000)     NULL,
	`DocStatus`   VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `O2`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `O2`
(
	`DocEntry`    INT           NOT NULL,
	`BplId`       INT           NOT NULL,
	`ChaveAcesso` VARCHAR(4000)     NULL,
	`DocStatus`   VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `O3`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `O3`
(
	`DocEntry`    INT           NOT NULL,
	`BplId`       INT           NOT NULL,
	`ChaveAcesso` VARCHAR(4000)     NULL,
	`DocStatus`   VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`doSap`.`DocEntry`,
	CASE
		WHEN `doSap`.`DocStatus` = 'O' AND `doSap`.`DocStatus` IS NOT NULL
			THEN 'Aberto'
		ELSE 'Fechado'
	END,
	CAST('Manual/Externo' AS CHAR(255))
FROM
	`O1` `doSap`
UNION
SELECT
	`doSap_1`.`DocEntry`,
	CASE
		WHEN `doSap_1`.`DocStatus` = 'O' AND `doSap_1`.`DocStatus` IS NOT NULL
			THEN 'Aberto'
		ELSE 'Fechado'
	END,
	CAST('Manual/Externo' AS CHAR(255))
FROM
	`O2` `doSap_1`
UNION
SELECT
	`doSap_2`.`DocEntry`,
	CASE
		WHEN `doSap_2`.`DocStatus` = 'O' AND `doSap_2`.`DocStatus` IS NOT NULL
			THEN 'Aberto'
		ELSE 'Fechado'
	END,
	CAST('Manual/Externo' AS CHAR(255))
FROM
	`O3` `doSap_2`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `O3`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `O2`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `O1`

