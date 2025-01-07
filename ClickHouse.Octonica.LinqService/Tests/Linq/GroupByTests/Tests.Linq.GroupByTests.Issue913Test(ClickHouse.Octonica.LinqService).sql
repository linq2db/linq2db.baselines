BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue913Test

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Issue913Test
(
	InstrumentID  Int32,
	TradingStatus Nullable(FixedString(1)),

	PRIMARY KEY (InstrumentID)
)
ENGINE = MergeTree()
ORDER BY InstrumentID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	g_2.cond,
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1.TradingStatus = 'D' THEN true
				ELSE false
			END as cond
		FROM
			Issue913Test g_1
	) g_2
GROUP BY
	g_2.cond

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue913Test

