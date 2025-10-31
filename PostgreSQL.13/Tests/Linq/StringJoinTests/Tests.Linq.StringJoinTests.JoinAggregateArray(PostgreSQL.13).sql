BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	CONCAT_WS(', ', Coalesce(t."NullableValue", ''), t."NotNullableValue", Coalesce(t."VarcharValue", ''), Coalesce(t."NVarcharValue", '')),
	(
		SELECT
			Coalesce(STRING_AGG(DISTINCT t1.item, ', ' ORDER BY t1.item), '')
		FROM
			(VALUES
				(t."NotNullableValue"), (t."NotNullableValue"),
				(t."NotNullableValue"), (t."NVarcharValue")
			) t1(item)
	),
	(
		SELECT
			Coalesce(STRING_AGG(Coalesce(t3.item_1, ''), ', ' ORDER BY CASE
				WHEN t3.item_1 IS NULL THEN 0
				ELSE 1
			END NULLS FIRST, t3.item_1 NULLS FIRST), '')
		FROM
			(
				SELECT DISTINCT
					t2.item as item_1
				FROM
					(VALUES
						(t."NotNullableValue"), (t."NotNullableValue"),
						(t."NotNullableValue"), (t."NVarcharValue")
					) t2(item)
				WHERE
					t2.item <> 'A' OR t2.item IS NULL
			) t3
	)
FROM
	"SampleClass" t

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."NullableValue",
	t1."NotNullableValue",
	t1."VarcharValue",
	t1."NVarcharValue"
FROM
	"SampleClass" t1

