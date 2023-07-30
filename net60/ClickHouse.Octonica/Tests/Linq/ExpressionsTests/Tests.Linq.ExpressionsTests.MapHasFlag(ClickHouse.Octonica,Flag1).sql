BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS MappingTestClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS MappingTestClass
(
	Id    Int32,
	Value Int32,
	Flags Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO MappingTestClass
(
	Id,
	Value,
	Flags
)
VALUES
(toInt32(1),toInt32(10),toInt32(1)),
(toInt32(2),toInt32(20),toInt32(2)),
(toInt32(3),toInt32(30),toInt32(3)),
(toInt32(4),toInt32(40),toInt32(4)),
(toInt32(5),toInt32(50),toInt32(5)),
(toInt32(6),toInt32(60),toInt32(6)),
(toInt32(7),toInt32(70),toInt32(7)),
(toInt32(8),toInt32(80),toInt32(0)),
(toInt32(9),toInt32(90),toInt32(1)),
(toInt32(10),toInt32(100),toInt32(2))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.Value,
	t.Flags
FROM
	MappingTestClass t
WHERE
	bitAnd(toInt32(t.Flags), toInt32(1)) <> toInt32(0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS MappingTestClass

