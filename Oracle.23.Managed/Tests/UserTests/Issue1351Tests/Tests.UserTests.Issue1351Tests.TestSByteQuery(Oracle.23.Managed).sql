-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."TestField",
	t1."TestNullable"
FROM
	"T1351Model" t1
WHERE
	t1."TestField" = 0

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."TestField",
	t1."TestNullable"
FROM
	"T1351Model" t1
WHERE
	CAST(t1."TestNullable" AS Int) <> 1 OR t1."TestNullable" IS NULL

