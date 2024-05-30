BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE Issue464
(
	Id    Int32,
	Value Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue464
(
	Id,
	Value
)
VALUES
(1,1),
(2,2),
(3,3)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	Issue464 t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE Issue464

