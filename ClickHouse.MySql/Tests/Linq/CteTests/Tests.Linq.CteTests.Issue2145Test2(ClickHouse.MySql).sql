-- ClickHouse.MySql ClickHouse

WITH CTE_1 AS
(
	SELECT
		t1.ID as ID,
		t1.FirstName as FirstName,
		t1.LastName as LastName,
		t1.MiddleName as MiddleName,
		t1.Gender as Gender
	FROM
		VALUES('ID Nullable(Int32), FirstName Nullable(String), LastName Nullable(String), MiddleName Nullable(String), Gender Nullable(FixedString(1))', (10, 'FN1', 'LN1', NULL, 'M'), (11, 'FN2', NULL, NULL, 'F')) t1
)
SELECT
	p.FirstName,
	p.ID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	CTE_1 p
WHERE
	p.ID = 11

