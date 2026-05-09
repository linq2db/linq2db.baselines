-- Oracle.11.Managed Oracle11

SELECT
	t."Value1" || CAST(t."Value2" AS NVarChar2(50)) || CASE
		WHEN t."Value3" IS NULL THEN NULL
		ELSE Lower(SUBSTR(RAWTOHEX(t."Value3"), 7, 2) || SUBSTR(RAWTOHEX(t."Value3"), 5, 2) || SUBSTR(RAWTOHEX(t."Value3"), 3, 2) || SUBSTR(RAWTOHEX(t."Value3"), 1, 2) || '-' || SUBSTR(RAWTOHEX(t."Value3"), 11, 2) || SUBSTR(RAWTOHEX(t."Value3"), 9, 2) || '-' || SUBSTR(RAWTOHEX(t."Value3"), 15, 2) || SUBSTR(RAWTOHEX(t."Value3"), 13, 2) || '-' || SUBSTR(RAWTOHEX(t."Value3"), 17, 4) || '-' || SUBSTR(RAWTOHEX(t."Value3"), 21, 12))
	END
FROM
	"StringConcatIntGuidNullEntity" t
ORDER BY
	t.ID

-- Oracle.11.Managed Oracle11

SELECT
	t1.ID,
	t1."Value1",
	t1."Value2",
	t1."Value3"
FROM
	"StringConcatIntGuidNullEntity" t1

