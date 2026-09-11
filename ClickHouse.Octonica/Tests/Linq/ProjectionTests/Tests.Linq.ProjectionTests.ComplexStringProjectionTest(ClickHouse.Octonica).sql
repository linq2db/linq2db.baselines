-- ClickHouse.Octonica ClickHouse
INSERT INTO StringTestTable
(
	ID,
	Data
)
VALUES
(
	2,
	NULL
)

-- ClickHouse.Octonica ClickHouse
SELECT
	t.ID,
	t.Data
FROM
	StringTestTable t
WHERE
	t.ID = 2
LIMIT 2

