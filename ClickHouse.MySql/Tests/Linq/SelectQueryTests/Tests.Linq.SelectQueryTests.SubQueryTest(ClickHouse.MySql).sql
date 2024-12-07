BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS SampleClass
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO SampleClass
(
	Id,
	Value
)
VALUES
(1,100)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t_1.Id,
	t_1.Value,
	t2.Value1,
	t2.Value2
FROM
	SampleClass t_1
		LEFT JOIN (
			SELECT
				t1.c1 as Value1,
				t1.c2 as Value2
			FROM
				(
					SELECT
						addDays(now(), t.Value) as c1,
						addDays(now(), 2) as c2
					FROM
						SampleClass t
					WHERE
						t.Value = 1
					UNION DISTINCT
					SELECT
						addDays(now(), 3) as c1,
						addDays(now(), 4) as c2
				) t1
			LIMIT 1
		) t2 ON 1=1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SampleClass

