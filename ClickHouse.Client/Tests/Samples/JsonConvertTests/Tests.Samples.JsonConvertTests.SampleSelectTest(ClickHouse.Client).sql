BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS SampleClass
(
	Id   Int32,
	Data Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.Data
FROM
	SampleClass t
WHERE
	JSON_VALUE(t.Data, '$.Property1') = 'Pr1'

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SampleClass

