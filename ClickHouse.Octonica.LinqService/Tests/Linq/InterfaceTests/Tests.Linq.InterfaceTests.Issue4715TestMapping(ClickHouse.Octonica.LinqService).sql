BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue4715Table

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Issue4715Table
(
	Id    Int32,
	Prop1 Int32,
	Prop2 Int32,
	Prop3 Int32,
	Prop4 Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue4715Table
(
	Id,
	Prop1,
	Prop2,
	Prop3,
	Prop4
)
VALUES
(
	1,
	2,
	11,
	3,
	22
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Prop1,
	t1.Prop3
FROM
	Issue4715Table t1
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue4715Table

