﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS SampleClass
(
	Id        Int32,
	NullValue Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	a_1.RECORDNAME,
	a_1.NullValue
FROM
	(
		SELECT
			a.Id as RECORDNAME,
			CASE
				WHEN a.NullValue IS NOT NULL THEN a.NullValue
				ELSE 0
			END as KEYNUMB,
			a.NullValue as NullValue
		FROM
			SampleClass a
	) a_1
WHERE
	(a_1.RECORDNAME = 0 AND a_1.KEYNUMB = 0 OR a_1.RECORDNAME = 1 AND a_1.KEYNUMB = 1 OR a_1.RECORDNAME = 2 AND a_1.KEYNUMB = 2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SampleClass

