BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."TestField",
	t1."TestNullable"
FROM
	"T1351Model" t1
WHERE
	t1."TestField" = 0

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."TestField",
	t1."TestNullable"
FROM
	"T1351Model" t1
WHERE
	t1."TestNullable" <> 1 OR t1."TestNullable" IS NULL

