-- ClickHouse.Octonica ClickHouse
SELECT
	x.Id,
	x.Value
FROM
	ContainerParameterEntity x
WHERE
	x.Value = 'Hello World'

