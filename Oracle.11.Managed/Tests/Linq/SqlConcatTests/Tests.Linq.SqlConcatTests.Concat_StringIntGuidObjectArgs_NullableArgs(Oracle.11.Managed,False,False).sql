-- Oracle.11.Managed Oracle11

SELECT
	t."Value1" || CAST(t."Value2" AS VarChar(255)) || Lower(SUBSTR(RAWTOHEX(t."Value3"), 7, 2) || SUBSTR(RAWTOHEX(t."Value3"), 5, 2) || SUBSTR(RAWTOHEX(t."Value3"), 3, 2) || SUBSTR(RAWTOHEX(t."Value3"), 1, 2) || '-' || SUBSTR(RAWTOHEX(t."Value3"), 11, 2) || SUBSTR(RAWTOHEX(t."Value3"), 9, 2) || '-' || SUBSTR(RAWTOHEX(t."Value3"), 15, 2) || SUBSTR(RAWTOHEX(t."Value3"), 13, 2) || '-' || SUBSTR(RAWTOHEX(t."Value3"), 17, 4) || '-' || SUBSTR(RAWTOHEX(t."Value3"), 21, 12))
FROM
	"StringConcatIntGuidNullEntity" t
ORDER BY
	t.ID

