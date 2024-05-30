BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS SampleClass
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SampleClass
(
	Id,
	Value
)
VALUES
(1,1),
(2,2),
(3,3)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	SampleClass
UPDATE
	Value = 20 + Value * 2
WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	SampleClass t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SampleClass

