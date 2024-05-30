BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue913Test`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Issue913Test`
(
	`InstrumentID`  INT  NOT NULL,
	`TradingStatus` CHAR     NULL,

	CONSTRAINT `PK_Issue913Test` PRIMARY KEY CLUSTERED (`InstrumentID`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`g_2`.`IsDelisted`,
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN `g_1`.`TradingStatus` = 'D' THEN 1
				ELSE 0
			END as `IsDelisted`
		FROM
			`Issue913Test` `g_1`
	) `g_2`
GROUP BY
	`g_2`.`IsDelisted`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue913Test`

