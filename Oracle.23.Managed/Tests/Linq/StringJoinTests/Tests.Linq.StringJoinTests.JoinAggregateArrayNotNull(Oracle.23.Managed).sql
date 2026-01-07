-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			Coalesce(LISTAGG(CAST(t4."item" AS VarChar(50)), ', ') WITHIN GROUP (ORDER BY t4."item"), '')
		FROM
			(
				SELECT CAST(t."NullableValue" AS NVarChar2(50)) AS "item" FROM sys.dual
				UNION ALL
				SELECT CAST(t."NotNullableValue" AS NVarChar2(50)) FROM sys.dual
				UNION ALL
				SELECT CAST(t."VarcharValue" AS NVarChar2(50)) FROM sys.dual
				UNION ALL
				SELECT t."NVarcharValue" FROM sys.dual) t4
	),
	t3."NotNullDistinctValue"
FROM
	"SampleClass" t
		OUTER APPLY (
			SELECT
				LISTAGG(CAST(Coalesce(t2."NotNullDistinctValue", N'') AS VarChar(50)), ', ') WITHIN GROUP (ORDER BY t2."NotNullDistinctValue") as "NotNullDistinctValue"
			FROM
				(
					SELECT DISTINCT
						t1."item" as "NotNullDistinctValue"
					FROM
						(
							SELECT CAST(t."NullableValue" AS NVarChar2(50)) AS "item" FROM sys.dual
							UNION ALL
							SELECT CAST(t."NotNullableValue" AS NVarChar2(50)) FROM sys.dual
							UNION ALL
							SELECT CAST(t."VarcharValue" AS NVarChar2(50)) FROM sys.dual
							UNION ALL
							SELECT t."NVarcharValue" FROM sys.dual) t1
					WHERE
						t1."item" IS NOT NULL
				) t2
		) t3

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1.PK,
	t1."Id",
	t1."NullableValue",
	t1."NotNullableValue",
	t1."VarcharValue",
	t1."NVarcharValue"
FROM
	"SampleClass" t1

