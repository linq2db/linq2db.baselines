BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue913Test

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue913Test
(
	InstrumentID  Int32,
	TradingStatus Nullable(FixedString(1)),

	PRIMARY KEY (InstrumentID)
)
ENGINE = MergeTree()
ORDER BY InstrumentID

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue913Test
(
	InstrumentID,
	TradingStatus
)
VALUES
(toInt32(1),NULL),
(toInt32(2),'A'),
(toInt32(3),'D')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.c1,
	Count(*)
FROM
	(
		SELECT
			CASE
				WHEN selectParam.TradingStatus = 'D'
					THEN toUInt8(1)
				ELSE toUInt8(0)
			END as Key_1,
			CASE
				WHEN selectParam.TradingStatus = 'D'
					THEN toUInt8(1)
				ELSE toUInt8(0)
			END as c1
		FROM
			Issue913Test selectParam
	) t1
GROUP BY
	t1.Key_1,
	t1.c1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue913Test

