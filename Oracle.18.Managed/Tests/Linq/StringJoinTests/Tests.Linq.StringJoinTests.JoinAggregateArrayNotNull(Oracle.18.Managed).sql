-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			Coalesce(LISTAGG(t4."item", ', ') WITHIN GROUP (ORDER BY t4."item"), '')
		FROM
			(
				SELECT t."NullableValue" AS "item" FROM sys.dual
				UNION ALL
				SELECT t."NotNullableValue" FROM sys.dual
				UNION ALL
				SELECT t."VarcharValue" FROM sys.dual
				UNION ALL
				SELECT t."NVarcharValue" FROM sys.dual) t4
	),
	t3."NotNullDistinctValue"
FROM
	"SampleClass" t
		OUTER APPLY (
			SELECT
				LISTAGG(Coalesce(t2."NotNullDistinctValue", ''), ', ') WITHIN GROUP (ORDER BY t2."NotNullDistinctValue") as "NotNullDistinctValue"
			FROM
				(
					SELECT DISTINCT
						t1."item" as "NotNullDistinctValue"
					FROM
						(
							SELECT t."NullableValue" AS "item" FROM sys.dual
							UNION ALL
							SELECT t."NotNullableValue" FROM sys.dual
							UNION ALL
							SELECT t."VarcharValue" FROM sys.dual
							UNION ALL
							SELECT t."NVarcharValue" FROM sys.dual) t1
					WHERE
						t1."item" IS NOT NULL
				) t2
		) t3

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."NullableValue",
	t1."NotNullableValue",
	t1."VarcharValue",
	t1."NVarcharValue"
FROM
	"SampleClass" t1

