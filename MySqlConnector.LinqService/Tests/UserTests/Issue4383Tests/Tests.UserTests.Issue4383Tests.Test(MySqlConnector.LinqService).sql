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
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `PUMPLINES`
(
	`LINE_ID`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2

INSERT INTO `PUMPLINES`
(
	`LINE_ID`
)
VALUES
(
	@Id
)

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
DECLARE @LineId Int32
SET     @LineId = 1
DECLARE @ChainId Int32
SET     @ChainId = 11

INSERT INTO `PUMPLINE_CHAINS`
(
	`LINE_ID`,
	`CHAIN_ID`
)
VALUES
(
	@LineId,
	@ChainId
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @LineId Int32
SET     @LineId = 2
DECLARE @ChainId Int32
SET     @ChainId = 22

INSERT INTO `PUMPLINE_CHAINS`
(
	`LINE_ID`,
	`CHAIN_ID`
)
VALUES
(
	@LineId,
	@ChainId
)

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
DECLARE @Id Int32
SET     @Id = 11

INSERT INTO `CHAINS`
(
	`CHAIN_ID`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 22

INSERT INTO `CHAINS`
(
	`CHAIN_ID`
)
VALUES
(
	@Id
)

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
DECLARE @ElementId Int32
SET     @ElementId = 11

INSERT INTO `CHAINPOINTS`
(
	`CHAIN_ID`
)
VALUES
(
	@ElementId
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @ElementId Int32
SET     @ElementId = 22

INSERT INTO `CHAINPOINTS`
(
	`CHAIN_ID`
)
VALUES
(
	@ElementId
)

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

