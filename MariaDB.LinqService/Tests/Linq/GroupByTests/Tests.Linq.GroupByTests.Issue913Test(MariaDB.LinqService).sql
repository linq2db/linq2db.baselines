﻿BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Issue913Test`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue913Test`
(
	`InstrumentID`  INT  NOT NULL,
	`TradingStatus` CHAR     NULL,

	CONSTRAINT `PK_Issue913Test` PRIMARY KEY CLUSTERED (`InstrumentID`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @InstrumentID Int32
SET     @InstrumentID = 1
DECLARE @TradingStatus String -- StringFixedLength
SET     @TradingStatus = NULL

INSERT INTO `Issue913Test`
(
	`InstrumentID`,
	`TradingStatus`
)
VALUES
(
	@InstrumentID,
	@TradingStatus
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @InstrumentID Int32
SET     @InstrumentID = 2
DECLARE @TradingStatus String(1) -- StringFixedLength
SET     @TradingStatus = 'A'

INSERT INTO `Issue913Test`
(
	`InstrumentID`,
	`TradingStatus`
)
VALUES
(
	@InstrumentID,
	@TradingStatus
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @InstrumentID Int32
SET     @InstrumentID = 3
DECLARE @TradingStatus String(1) -- StringFixedLength
SET     @TradingStatus = 'D'

INSERT INTO `Issue913Test`
(
	`InstrumentID`,
	`TradingStatus`
)
VALUES
(
	@InstrumentID,
	@TradingStatus
)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`g_2`.`c1`,
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN `g_1`.`TradingStatus` = 'D' THEN 1
				ELSE 0
			END as `c1`
		FROM
			`Issue913Test` `g_1`
	) `g_2`
GROUP BY
	`g_2`.`c1`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Issue913Test`

