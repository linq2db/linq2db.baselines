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
('Value1'),
('Value2'),
('Value3'),
('Value4'),
('Value5'),
('Value6'),
('Value7'),
('Value8')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Value
FROM
	TakeSkipClass t1
ORDER BY
	t1.Value
LIMIT 3, 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TakeSkipClass

