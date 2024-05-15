BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS SampleClass
(
	Id   Int32,
	Data Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO SampleClass
(
	Id,
	Data
)
VALUES
(
	1,
	'{"Property1":"Pr1"}'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.Data
FROM
	SampleClass t
WHERE
	JSON_VALUE(t.Data, '$.Property1') = 'Pr1'

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SampleClass

