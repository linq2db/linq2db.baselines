BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Issue913Test`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Issue913Test`
(
	`InstrumentID`  INT  NOT NULL,
	`TradingStatus` CHAR     NULL,

	CONSTRAINT `PK_Issue913Test` PRIMARY KEY CLUSTERED (`InstrumentID`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

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
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`c1`,
	Count(*)
FROM
	(
		SELECT
			CASE
				WHEN `selectParam`.`TradingStatus` = 'D'
					THEN 1
				ELSE 0
			END as `Key_1`,
			CASE
				WHEN `selectParam`.`TradingStatus` = 'D'
					THEN 1
				ELSE 0
			END as `c1`
		FROM
			`Issue913Test` `selectParam`
	) `t1`
GROUP BY
	`t1`.`Key_1`,
	`t1`.`c1`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Issue913Test`

