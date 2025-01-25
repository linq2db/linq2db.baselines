BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TakeSkipClass

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS TakeSkipClass
(
	Value Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TakeSkipClass
(
	Value
)
VALUES
('PIPPO'),
('PLUTO'),
('PLUTO'),
('BOLTO')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				group_1.Value
			FROM
				TakeSkipClass group_1
			GROUP BY
				group_1.Value
			HAVING
				COUNT(*) > 1
			LIMIT 1
		)
			THEN true
		ELSE false
	END

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TakeSkipClass

