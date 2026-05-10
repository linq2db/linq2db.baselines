-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Value1" || t."Value2"
FROM
	"StringConcatNullEntity" t
ORDER BY
	t.ID

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."Value1",
	t1."Value2"
FROM
	"StringConcatNullEntity" t1

