BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

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

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	TestInsertOrReplaceTable x
WHERE
	x.ID = 123 AND x.FirstName = 'John'

