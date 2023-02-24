BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS GroupSampleClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS GroupSampleClass
(
	Id1   Int32,
	Id2   Int32,
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO GroupSampleClass
(
	Id1,
	Id2,
	Value
)
VALUES
(
	toInt32(1),
	toInt32(1),
	toInt32(1)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO GroupSampleClass
(
	Id1,
	Id2,
	Value
)
VALUES
(
	toInt32(2),
	toInt32(2),
	toInt32(0)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO GroupSampleClass
(
	Id1,
	Id2,
	Value
)
VALUES
(
	toInt32(3),
	toInt32(0),
	toInt32(1)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO GroupSampleClass
(
	Id1,
	Id2,
	Value
)
VALUES
(
	toInt32(4),
	toInt32(1),
	toInt32(0)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO GroupSampleClass
(
	Id1,
	Id2,
	Value
)
VALUES
(
	toInt32(5),
	toInt32(2),
	toInt32(1)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO GroupSampleClass
(
	Id1,
	Id2,
	Value
)
VALUES
(
	toInt32(6),
	toInt32(0),
	toInt32(0)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO GroupSampleClass
(
	Id1,
	Id2,
	Value
)
VALUES
(
	toInt32(7),
	toInt32(1),
	toInt32(1)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO GroupSampleClass
(
	Id1,
	Id2,
	Value
)
VALUES
(
	toInt32(8),
	toInt32(2),
	toInt32(0)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO GroupSampleClass
(
	Id1,
	Id2,
	Value
)
VALUES
(
	toInt32(9),
	toInt32(0),
	toInt32(1)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO GroupSampleClass
(
	Id1,
	Id2,
	Value
)
VALUES
(
	toInt32(10),
	toInt32(1),
	toInt32(0)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	GROUPING(t1.Id1, t1.Id2),
	t1.Id1,
	Count(*)
FROM
	(
		SELECT DISTINCT
			selectParam.Id1 as Id1,
			selectParam.Id2 as Id2,
			selectParam.Value as Value_1
		FROM
			GroupSampleClass selectParam
	) t1
GROUP BY ROLLUP (
	t1.Id1,
	t1.Id2
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS GroupSampleClass

