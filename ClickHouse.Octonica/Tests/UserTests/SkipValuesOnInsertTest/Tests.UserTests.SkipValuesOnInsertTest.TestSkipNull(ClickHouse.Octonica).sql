-- ClickHouse.Octonica ClickHouse
INSERT INTO SkipOnInsertNulls
(
	Id,
	Name
)
VALUES
(
	1,
	'Tommy'
)

-- ClickHouse.Octonica ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnInsertNulls t
WHERE
	t.Id = 1
LIMIT 1

