BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `PUMPLINES`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `PUMPLINES`
(
	`LINE_ID` INT NOT NULL,

	CONSTRAINT `PK_PUMPLINES` PRIMARY KEY CLUSTERED (`LINE_ID`)
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `PUMPLINES`
(
	`LINE_ID`
)
VALUES
(1),
(2)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `PUMPLINE_CHAINS`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `PUMPLINE_CHAINS`
(
	`LINE_ID`  INT NOT NULL,
	`CHAIN_ID` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `PUMPLINE_CHAINS`
(
	`LINE_ID`,
	`CHAIN_ID`
)
VALUES
(1,11),
(2,22)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `CHAINS`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `CHAINS`
(
	`CHAIN_ID` INT NOT NULL,

	CONSTRAINT `PK_CHAINS` PRIMARY KEY CLUSTERED (`CHAIN_ID`)
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `CHAINS`
(
	`CHAIN_ID`
)
VALUES
(11),
(22)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `CHAINPOINTS`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `CHAINPOINTS`
(
	`CHAIN_ID` INT NOT NULL,

	CONSTRAINT `PK_CHAINPOINTS` PRIMARY KEY CLUSTERED (`CHAIN_ID`)
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `CHAINPOINTS`
(
	`CHAIN_ID`
)
VALUES
(11),
(22)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySqlConnector MySql

SELECT
	`key_data_result`.`CHAIN_ID`,
	`key_data_result`.`LINE_ID`,
	`detail_1`.`CHAIN_ID`
FROM
	(
		SELECT DISTINCT
			`a_Chain`.`CHAIN_ID`,
			`lw_PumpLineTest``2`.`LINE_ID`
		FROM
			`PUMPLINES` `lw_PumpLineTest``2`
				INNER JOIN `PUMPLINE_CHAINS` `detail` ON `lw_PumpLineTest``2`.`LINE_ID` = `detail`.`LINE_ID`
				LEFT JOIN `CHAINS` `a_Chain` ON `detail`.`CHAIN_ID` = `a_Chain`.`CHAIN_ID`
	) `key_data_result`
		INNER JOIN `CHAINPOINTS` `detail_1` ON `key_data_result`.`CHAIN_ID` = `detail_1`.`CHAIN_ID`

BeforeExecute
-- MySqlConnector MySql

SELECT
	`lw_PumpLineTest``2`.`LINE_ID`,
	`detail`.`LINE_ID`,
	`detail`.`CHAIN_ID`,
	`a_Chain`.`CHAIN_ID`
FROM
	`PUMPLINES` `lw_PumpLineTest``2`
		INNER JOIN `PUMPLINE_CHAINS` `detail` ON `lw_PumpLineTest``2`.`LINE_ID` = `detail`.`LINE_ID`
		LEFT JOIN `CHAINS` `a_Chain` ON `detail`.`CHAIN_ID` = `a_Chain`.`CHAIN_ID`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`LINE_ID`
FROM
	`PUMPLINES` `t1`
ORDER BY
	`t1`.`LINE_ID`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `CHAINPOINTS`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `CHAINS`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `PUMPLINE_CHAINS`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `PUMPLINES`

