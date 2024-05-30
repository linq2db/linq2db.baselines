BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SampleData

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	u_1.Id,
	u_1.Value1,
	u_1.Value2,
	u_1.Value3
FROM
	SampleData s
		INNER JOIN (
			SELECT
				u.Id as Id,
				u.Value1 as Value1,
				u.Value2 as Value2,
				u.Value3 as Value3
			FROM
				SampleData u
			WHERE
				u.Id % 2 = 0
			UNION ALL
			SELECT
				t.Id as Id,
				t.Value1 as Value1,
				t.Value2 as Value2,
				t.Value3 as Value3
			FROM
				SampleData t
			WHERE
				t.Id % 4 = 0
		) u_1 ON u_1.Id = s.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SampleData

