BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS MappingTestClass

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS MappingTestClass
(
	Id    Int32,
	Value Int32,
	Flags Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO MappingTestClass
(
	Id,
	Value,
	Flags
)
VALUES
(1,10,1),
(2,20,2),
(3,30,3),
(4,40,4),
(5,50,5),
(6,60,6),
(7,70,7),
(8,80,0),
(9,90,1),
(10,100,2)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.Value,
	t.Flags
FROM
	MappingTestClass t
WHERE
	bitAnd(t.Flags, toInt32(4)) <> 0

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS MappingTestClass

