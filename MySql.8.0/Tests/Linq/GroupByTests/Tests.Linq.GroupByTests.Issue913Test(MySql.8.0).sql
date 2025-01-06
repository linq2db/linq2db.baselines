BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue913Test`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue913Test`
(
	`InstrumentID`  INT  NOT NULL,
	`TradingStatus` CHAR     NULL,

	CONSTRAINT `PK_Issue913Test` PRIMARY KEY CLUSTERED (`InstrumentID`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`g_2`.`cond`,
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN `g_1`.`TradingStatus` = 'D' THEN 1
				ELSE 0
			END as `cond`
		FROM
			`Issue913Test` `g_1`
	) `g_2`
GROUP BY
	`g_2`.`cond`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue913Test`

