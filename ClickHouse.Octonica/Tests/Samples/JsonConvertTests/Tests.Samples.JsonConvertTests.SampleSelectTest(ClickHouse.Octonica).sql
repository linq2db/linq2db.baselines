-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.Data
FROM
	SampleClass t
WHERE
	JSON_VALUE(t.Data, '$.Property1') = 'Pr1'

