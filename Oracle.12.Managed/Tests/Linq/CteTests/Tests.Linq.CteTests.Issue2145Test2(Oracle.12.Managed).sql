-- Oracle.12.Managed Oracle.Managed Oracle12

WITH CTE_1
(
	ID,
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
AS
(
	SELECT
		t1.ID,
		t1."FirstName",
		t1."LastName",
		t1."MiddleName",
		t1."Gender"
	FROM
		(
			SELECT 10 AS ID, 'FN1' AS "FirstName", 'LN1' AS "LastName", NULL AS "MiddleName", 'M' AS "Gender" FROM sys.dual
			UNION ALL
			SELECT 11, 'FN2', NULL, NULL, 'F' FROM sys.dual) t1
)
SELECT
	p."FirstName",
	p.ID,
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	(
		SELECT
			t2.ID,
			t2."FirstName",
			t2."LastName",
			t2."MiddleName",
			t2."Gender"
		FROM
			CTE_1 t2
	) p
WHERE
	p.ID = 11

