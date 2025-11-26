-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
			Coalesce(STRING_AGG(Coalesce(t3."AggregatedFilteredDistinct", ''), ', ' ORDER BY CASE
				WHEN t3."AggregatedFilteredDistinct" IS NULL THEN 0
				ELSE 1
			END NULLS FIRST, t3."AggregatedFilteredDistinct" NULLS FIRST), '')
		FROM
			(
				SELECT DISTINCT
					t2.item as "AggregatedFilteredDistinct"
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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."NullableValue",
	t1."NotNullableValue",
	t1."VarcharValue",
	t1."NVarcharValue"
FROM
	"SampleClass" t1

