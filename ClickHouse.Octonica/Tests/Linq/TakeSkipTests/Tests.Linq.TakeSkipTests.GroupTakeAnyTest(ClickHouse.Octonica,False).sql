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
('PIPPO'),
('PLUTO'),
('PLUTO'),
('BOLTO')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				item_1.Value
			FROM
				TakeSkipClass item_1
			GROUP BY
				item_1.Value
			HAVING
				COUNT(*) > 1
			LIMIT 1
		)
			THEN true
		ELSE false
	END

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TakeSkipClass

