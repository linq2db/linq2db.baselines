-- Informix.DB2 Informix

WITH CTE_1
(
	ID,
	FirstName,
	LastName,
	MiddleName,
	Gender
)
AS
(
	SELECT
		t1.ID,
		t1.FirstName,
		t1.LastName,
		t1.MiddleName,
		t1.Gender
	FROM
		(
			SELECT 10::Int AS ID, 'FN1'::NVarChar(255) AS FirstName, 'LN1'::NVarChar(255) AS LastName, NULL::NVarChar(255) AS MiddleName, 'M'::Char(1) AS Gender FROM table(set{1})
			UNION ALL
			SELECT 11::Int, 'FN2'::NVarChar(255), NULL::NVarChar(255), NULL::NVarChar(255), 'F'::Char(1) FROM table(set{1})) t1
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

