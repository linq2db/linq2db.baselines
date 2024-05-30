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
('PLUTO'),
('PIPPO'),
('PLUTO'),
('BOLTO')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Value
FROM
	TakeSkipClass t1
ORDER BY
	t1.Value
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TakeSkipClass

