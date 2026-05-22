-- ClickHouse.Driver ClickHouse

SELECT
	t1.FirstName,
	t1.ID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	VALUES(
		'FirstName Nullable(String), ID Nullable(Int32), LastName Nullable(String), MiddleName Nullable(String), Gender Nullable(FixedString(1))',
		('Janet', 3, NULL, NULL, 'M'), ('Doe', 4, NULL, NULL, 'M')
	) t1

