BeforeExecute
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

INSERT INTO `Issue913Test`
(
	`InstrumentID`,
	`TradingStatus`
)
VALUES
(1,NULL),
(2,'A'),
(3,'D')

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	CASE
		WHEN `selectParam`.`TradingStatus` = 'D'
			THEN 1
		ELSE 0
	END,
	Count(*)
FROM
	`Issue913Test` `selectParam`
GROUP BY
	CASE
		WHEN `selectParam`.`TradingStatus` = 'D'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `selectParam`.`TradingStatus` = 'D'
			THEN 1
		ELSE 0
	END

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Issue913Test`

