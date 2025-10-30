BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

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
			Coalesce(STRING_AGG(Coalesce(t4.item_1, ''), ', '), '')
		FROM
			(
				SELECT
					t3.item_1
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
				ORDER BY
					CASE
						WHEN t3.item_1 IS NULL THEN 0
						ELSE 1
					END,
					t3.item_1
			) t4
	)
FROM
	"SampleClass" t

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."NullableValue",
	t1."NotNullableValue",
	t1."VarcharValue",
	t1."NVarcharValue"
FROM
	"SampleClass" t1

