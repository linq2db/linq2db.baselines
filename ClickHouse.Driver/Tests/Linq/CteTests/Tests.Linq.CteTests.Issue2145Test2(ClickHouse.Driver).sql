-- ClickHouse.Driver ClickHouse

WITH CTE_1 AS
(
	SELECT
		t1.ID as ID,
		t1.FirstName as FirstName,
		t1.LastName as LastName,
		t1.MiddleName as MiddleName,
		t1.Gender as Gender
	FROM
		(
			SELECT 10 AS ID, 'FN1' AS FirstName, 'LN1' AS LastName, NULL AS MiddleName, 'M' AS Gender
			UNION ALL
			SELECT 11, 'FN2', NULL, NULL, 'F') t1
)
SELECT
	p.FirstName,
	p.ID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	(
		SELECT
			t2.ID as ID,
			t2.FirstName as FirstName,
			t2.LastName as LastName,
			t2.MiddleName as MiddleName,
			t2.Gender as Gender
		FROM
			CTE_1 t2
	) p
WHERE
	p.ID = 11

