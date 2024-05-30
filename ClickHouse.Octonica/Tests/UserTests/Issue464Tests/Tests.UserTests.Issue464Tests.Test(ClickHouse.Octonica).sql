BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE Issue464
(
	Id    Int32,
	Value Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
INSERT INTO Issue464(Id, Value) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	Issue464 t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE Issue464

