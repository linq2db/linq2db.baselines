-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Coalesce((
		SELECT
			Coalesce(LISTAGG(CAST(t1."item" AS VarChar(50)), ', ') WITHIN GROUP (ORDER BY t1."item"), '')
		FROM
			(
				SELECT To_NChar(t."NullableValue") AS "item" FROM sys.dual
				UNION ALL
				SELECT To_NChar(t."NotNullableValue") FROM sys.dual
				UNION ALL
				SELECT To_NChar(t."VarcharValue") FROM sys.dual
				UNION ALL
				SELECT t."NVarcharValue" FROM sys.dual) t1
	), ''),
	Coalesce((
		SELECT
			LISTAGG(CAST(Coalesce(t3."NotNullDistinctValue", N'') AS VarChar(50)), ', ') WITHIN GROUP (ORDER BY t3."NotNullDistinctValue")
		FROM
			(
				SELECT DISTINCT
					t2."item" as "NotNullDistinctValue"
				FROM
					(
						SELECT To_NChar(t."NullableValue") AS "item" FROM sys.dual
						UNION ALL
						SELECT To_NChar(t."NotNullableValue") FROM sys.dual
						UNION ALL
						SELECT To_NChar(t."VarcharValue") FROM sys.dual
						UNION ALL
						SELECT t."NVarcharValue" FROM sys.dual) t2
				WHERE
					t2."item" IS NOT NULL
			) t3
	), '')
FROM
	"SampleClass" t

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1.PK,
	t1."Id",
	t1."NullableValue",
	t1."NotNullableValue",
	t1."VarcharValue",
	t1."NVarcharValue"
FROM
	"SampleClass" t1

