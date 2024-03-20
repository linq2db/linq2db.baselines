BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TakeSkipClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS TakeSkipClass
(
	Value Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO TakeSkipClass
(
	Value
)
VALUES
(
	'PIPPO'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO TakeSkipClass
(
	Value
)
VALUES
(
	'PLUTO'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO TakeSkipClass
(
	Value
)
VALUES
(
	'PLUTO'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO TakeSkipClass
(
	Value
)
VALUES
(
	'BOLTO'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				t1.Value
			FROM
				TakeSkipClass t1
			GROUP BY
				t1.Value
			HAVING
				Count(*) > toInt32(1)
			LIMIT toInt32(1)
		)
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TakeSkipClass

