BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue913Test

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue913Test
(
	InstrumentID  Int32,
	TradingStatus Nullable(FixedString(1)),

	PRIMARY KEY (InstrumentID)
)
ENGINE = MergeTree()
ORDER BY InstrumentID

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue913Test
(
	InstrumentID,
	TradingStatus
)
VALUES
(
	1,
	NULL
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue913Test
(
	InstrumentID,
	TradingStatus
)
VALUES
(
	2,
	'A'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue913Test
(
	InstrumentID,
	TradingStatus
)
VALUES
(
	3,
	'D'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	g_2.IsDelisted,
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1.TradingStatus = 'D' THEN true
				ELSE false
			END as IsDelisted
		FROM
			Issue913Test g_1
	) g_2
GROUP BY
	g_2.IsDelisted

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue913Test

