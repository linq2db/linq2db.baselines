BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO TableToInsert
(
	Id,
	Value
)
SELECT
	t1.Id,
	t1.Value
FROM
	(
		SELECT 3 AS Id, 'Janet' AS Value
		UNION ALL
		SELECT 4, 'Doe') t1
		LEFT JOIN TableToInsert t ON t.Id = t1.Id
WHERE
	t.Id IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO TableToInsert
(
	Id,
	Value
)
SELECT
	t1.Id,
	t1.Value
FROM
	(
		SELECT 3 AS Id, 'Janet' AS Value
		UNION ALL
		SELECT 4, 'Doe') t1
		LEFT JOIN TableToInsert t ON t.Id = t1.Id
WHERE
	t.Id IS NULL

