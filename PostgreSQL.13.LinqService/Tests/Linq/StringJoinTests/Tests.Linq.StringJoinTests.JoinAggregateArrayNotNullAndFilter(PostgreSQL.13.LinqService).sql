BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	x.c1
FROM
	(
		SELECT
			CONCAT_WS(', ', CASE
				WHEN t."NullableValue" LIKE '%A%' ESCAPE '~' THEN t."NullableValue"
				ELSE NULL
			END, CASE
				WHEN t."NotNullableValue" LIKE '%A%' ESCAPE '~' THEN t."NotNullableValue"
				ELSE NULL
			END, CASE
				WHEN t."VarcharValue" LIKE '%A%' ESCAPE '~' THEN t."VarcharValue"
				ELSE NULL
			END, CASE
				WHEN t."NVarcharValue" LIKE '%A%' ESCAPE '~' THEN t."NVarcharValue"
				ELSE NULL
			END) as c1
		FROM
			"SampleClass" t
	) x
WHERE
	LTRIM(x.c1, '	
                 　') <> ''

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."NullableValue",
	t1."NotNullableValue",
	t1."VarcharValue",
	t1."NVarcharValue"
FROM
	"SampleClass" t1

