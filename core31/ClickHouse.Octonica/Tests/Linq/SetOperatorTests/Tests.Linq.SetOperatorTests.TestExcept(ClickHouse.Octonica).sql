﻿BeforeExecute
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
(toInt32(1),toInt32(10),toInt32(100),toInt32(1000)),
(toInt32(2),toInt32(20),toInt32(200),toInt32(2000)),
(toInt32(3),toInt32(30),toInt32(300),toInt32(3000)),
(toInt32(4),toInt32(40),toInt32(400),toInt32(4000)),
(toInt32(5),toInt32(50),toInt32(500),toInt32(5000)),
(toInt32(6),toInt32(60),toInt32(600),toInt32(6000)),
(toInt32(7),toInt32(70),toInt32(700),toInt32(7000)),
(toInt32(8),toInt32(80),toInt32(800),toInt32(8000)),
(toInt32(9),toInt32(90),toInt32(900),toInt32(9000)),
(toInt32(10),toInt32(100),toInt32(1000),toInt32(10000))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT DISTINCT
	t2.Id,
	t2.Value1,
	t2.Value2,
	t2.Value3
FROM
	(
		SELECT
			t1.Id as Id,
			t1.Value1 as Value1,
			t1.Value2 as Value2,
			t1.Value3 as Value3
		FROM
			(
				SELECT
					t.Id as Id,
					t.Value1 as Value1,
					t.Value2 as Value2,
					t.Value3 as Value3
				FROM
					SampleData t
				WHERE
					t.Id % toInt32(2) = toInt32(0)
				UNION ALL
				SELECT
					t_1.Id as Id,
					t_1.Value1 as Value1,
					t_1.Value2 as Value2,
					t_1.Value3 as Value3
				FROM
					SampleData t_1
				WHERE
					t_1.Id % toInt32(2) = toInt32(0)
			) t1
		EXCEPT
		SELECT
			t_2.Id as Id,
			t_2.Value1 as Value1,
			t_2.Value2 as Value2,
			t_2.Value3 as Value3
		FROM
			SampleData t_2
		WHERE
			t_2.Id % toInt32(4) = toInt32(0)
	) t2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SampleData

