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
	VALUES(
		'Id Nullable(Int32), Value Nullable(String)',
		(2, 'Janet'), (3, 'Doe')
	) t1
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
	VALUES(
		'Id Nullable(Int32), Value Nullable(String)',
		(2, 'Janet'), (3, 'Doe')
	) t1
		LEFT JOIN TableToInsert t ON t.Id = t1.Id
WHERE
	t.Id IS NULL

