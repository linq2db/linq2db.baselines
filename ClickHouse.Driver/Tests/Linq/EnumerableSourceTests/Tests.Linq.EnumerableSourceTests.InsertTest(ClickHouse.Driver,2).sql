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
	VALUES('Id Nullable(Int32), Value Nullable(String)', (3, 'Janet'), (4, 'Doe')) t1
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
	VALUES('Id Nullable(Int32), Value Nullable(String)', (3, 'Janet'), (4, 'Doe')) t1
		LEFT JOIN TableToInsert t ON t.Id = t1.Id
WHERE
	t.Id IS NULL

