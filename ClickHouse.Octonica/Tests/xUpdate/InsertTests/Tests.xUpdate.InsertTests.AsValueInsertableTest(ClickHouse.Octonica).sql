-- ClickHouse.Octonica ClickHouse

INSERT INTO TestInsertOrReplaceTable
(
	ID,
	FirstName
)
VALUES
(
	123,
	'John'
)

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	TestInsertOrReplaceTable x
WHERE
	x.ID = 123 AND x.FirstName = 'John'

