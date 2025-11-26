-- Oracle.19.Managed Oracle.Managed Oracle12

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
	t3."Join_1"
FROM
	"SampleClass" t
		OUTER APPLY (
			SELECT
				LISTAGG(Coalesce(t2."item_1", ''), ', ') WITHIN GROUP (ORDER BY t2."item_1") as "Join_1"
			FROM
				(
					SELECT DISTINCT
						t1."item" as "item_1"
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

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."NullableValue",
	t1."NotNullableValue",
	t1."VarcharValue",
	t1."NVarcharValue"
FROM
	"SampleClass" t1

