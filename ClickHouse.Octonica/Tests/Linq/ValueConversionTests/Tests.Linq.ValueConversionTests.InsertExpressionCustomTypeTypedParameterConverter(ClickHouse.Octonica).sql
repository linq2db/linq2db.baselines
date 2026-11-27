-- ClickHouse.Octonica ClickHouse
INSERT INTO CustomFieldRecord
(
	Id,
	Field1
)
VALUES
(
	1,
	NULL
)

-- ClickHouse.Octonica ClickHouse
INSERT INTO CustomFieldRecord
(
	Id,
	Field1
)
VALUES
(
	2,
	NULL
)

-- ClickHouse.Octonica ClickHouse
INSERT INTO CustomFieldRecord
(
	Id,
	Field1
)
VALUES
(
	3,
	'test'
)

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.Field1
FROM
	CustomFieldRecord t1
ORDER BY
	t1.Id

