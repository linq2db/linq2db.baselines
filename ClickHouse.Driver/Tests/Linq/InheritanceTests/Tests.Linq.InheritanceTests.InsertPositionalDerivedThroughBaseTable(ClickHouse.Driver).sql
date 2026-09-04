-- ClickHouse.Driver ClickHouse
INSERT INTO InheritanceFilterPositional
(
	Id,
	Code,
	Value
)
VALUES
(
	1,
	1,
	42
)

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.Code,
	t1.Value
FROM
	InheritanceFilterPositional t1
LIMIT 2

