-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	(
		SELECT
			x.Id as Id,
			x.FirstName as FirstName,
			x.LastName as LastName
		FROM
			ComplexPerson x
		WHERE
			x.Id < 10
		UNION DISTINCT
		SELECT
			x_1.Id as Id,
			x_1.FirstName as FirstName,
			x_1.LastName as LastName
		FROM
			ComplexPerson x_1
		WHERE
			x_1.Id < 20
	) t1

