BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SampleData

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS SampleData
(
	Id     Int32,
	Value1 Int32,
	Value2 Int32,
	Value3 Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SampleData
(
	Id,
	Value1,
	Value2,
	Value3
)
VALUES
(
	1,
	10,
	100,
	1000
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SampleData
(
	Id,
	Value1,
	Value2,
	Value3
)
VALUES
(
	2,
	20,
	200,
	2000
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SampleData
(
	Id,
	Value1,
	Value2,
	Value3
)
VALUES
(
	3,
	30,
	300,
	3000
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SampleData
(
	Id,
	Value1,
	Value2,
	Value3
)
VALUES
(
	4,
	40,
	400,
	4000
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SampleData
(
	Id,
	Value1,
	Value2,
	Value3
)
VALUES
(
	5,
	50,
	500,
	5000
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SampleData
(
	Id,
	Value1,
	Value2,
	Value3
)
VALUES
(
	6,
	60,
	600,
	6000
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SampleData
(
	Id,
	Value1,
	Value2,
	Value3
)
VALUES
(
	7,
	70,
	700,
	7000
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SampleData
(
	Id,
	Value1,
	Value2,
	Value3
)
VALUES
(
	8,
	80,
	800,
	8000
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SampleData
(
	Id,
	Value1,
	Value2,
	Value3
)
VALUES
(
	9,
	90,
	900,
	9000
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SampleData
(
	Id,
	Value1,
	Value2,
	Value3
)
VALUES
(
	10,
	100,
	1000,
	10000
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r_3.Value_1
FROM
	(
		SELECT
			r.Id as Id,
			r.Value1 as Value_1
		FROM
			SampleData r
		WHERE
			r.Id % 2 = 0
		EXCEPT DISTINCT
		SELECT
			r_1.Id as Id,
			r_1.Value2 / 10 as Value_1
		FROM
			SampleData r_1
		WHERE
			r_1.Id % 4 = 0
		EXCEPT DISTINCT
		SELECT
			r_2.Id as Id,
			r_2.Value1 as Value_1
		FROM
			SampleData r_2
		WHERE
			r_2.Id % 6 = 0
	) r_3

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SampleData

