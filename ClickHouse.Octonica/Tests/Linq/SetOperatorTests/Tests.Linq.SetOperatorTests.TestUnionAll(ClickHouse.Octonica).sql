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
(1,10,100,1000),
(2,20,200,2000),
(3,30,300,3000),
(4,40,400,4000),
(5,50,500,5000),
(6,60,600,6000),
(7,70,700,7000),
(8,80,800,8000),
(9,90,900,9000),
(10,100,1000,10000)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.Value1,
	t.Value2,
	t.Value3
FROM
	SampleData t
WHERE
	t.Id % 2 = 0
UNION ALL
SELECT
	t_1.Id as Id,
	t_1.Value1 as Value1,
	t_1.Value2 as Value2,
	t_1.Value3 as Value3
FROM
	SampleData t_1
WHERE
	t_1.Id % 4 = 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SampleData

