BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	x."Join_1"
FROM
	(
		SELECT
			(
				SELECT
					Coalesce(LISTAGG(CASE
						WHEN t1."item" LIKE '%A%' ESCAPE '~' THEN t1."item"
						ELSE NULL
					END, ', '), '')
				FROM
					(
						SELECT t."NullableValue" AS "item" FROM sys.dual
						UNION ALL
						SELECT t."NotNullableValue" FROM sys.dual
						UNION ALL
						SELECT t."VarcharValue" FROM sys.dual
						UNION ALL
						SELECT t."NVarcharValue" FROM sys.dual) t1
			) as "Join_1"
		FROM
			"SampleClass" t
	) x
WHERE
	NOT (x."Join_1" IS NULL OR LTRIM(x."Join_1", '	
                 　') IS NULL)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."NullableValue",
	t1."NotNullableValue",
	t1."VarcharValue",
	t1."NVarcharValue"
FROM
	"SampleClass" t1

