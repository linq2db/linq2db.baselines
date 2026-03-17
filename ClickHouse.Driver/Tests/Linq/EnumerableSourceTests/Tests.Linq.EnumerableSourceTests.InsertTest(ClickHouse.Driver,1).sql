-- ClickHouse.Driver ClickHouse

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
		SELECT 2 AS Id, 'Janet' AS Value
		UNION ALL
		SELECT 3, 'Doe') t1
		LEFT JOIN TableToInsert t ON t.Id = t1.Id
WHERE
	t.Id IS NULL

-- ClickHouse.Driver ClickHouse

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
		SELECT 2 AS Id, 'Janet' AS Value
		UNION ALL
		SELECT 3, 'Doe') t1
		LEFT JOIN TableToInsert t ON t.Id = t1.Id
WHERE
	t.Id IS NULL

