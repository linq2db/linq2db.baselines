BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE Issue464
(
	Id    Int32,
	Value Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
INSERT ASYNC BULK Issue464(Id, Value)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	Issue464 t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE Issue464

