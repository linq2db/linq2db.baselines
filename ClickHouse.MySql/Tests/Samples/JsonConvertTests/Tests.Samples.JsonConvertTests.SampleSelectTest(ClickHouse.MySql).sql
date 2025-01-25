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

