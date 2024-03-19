BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue913Test`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Issue913Test`
(
	`InstrumentID`  INT  NOT NULL,
	`TradingStatus` CHAR     NULL,

	CONSTRAINT `PK_Issue913Test` PRIMARY KEY CLUSTERED (`InstrumentID`)
)

BeforeExecute
-- MySql MySql.Official MySql

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
-- MySql MySql.Official MySql

SELECT
	`g_2`.`c1`,
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN `g_1`.`TradingStatus` = 'D'
					THEN 1
				ELSE 0
			END as `c1`
		FROM
			`Issue913Test` `g_1`
	) `g_2`
GROUP BY
	`g_2`.`c1`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue913Test`

