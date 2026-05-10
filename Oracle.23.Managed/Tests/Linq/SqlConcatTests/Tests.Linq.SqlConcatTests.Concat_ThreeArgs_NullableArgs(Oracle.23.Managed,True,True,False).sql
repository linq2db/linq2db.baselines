-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Value1" || t."Value2" || t."Value3"
FROM
	"StringConcatThreeNullEntity" t
ORDER BY
	t.ID

