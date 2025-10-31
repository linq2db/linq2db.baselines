BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	CONCAT_WS(', ', t."NullableValue", t."NotNullableValue", t."VarcharValue", t."NVarcharValue"),
	(
		SELECT
			Coalesce(STRING_AGG(DISTINCT t1.item, ', ' ORDER BY t1.item), '')
		FROM
			(VALUES
				(t."NullableValue"), (t."NotNullableValue"),
				(t."VarcharValue"), (t."NVarcharValue")
			) t1(item)
	)
FROM
	"SampleClass" t

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."NullableValue",
	t1."NotNullableValue",
	t1."VarcharValue",
	t1."NVarcharValue"
FROM
	"SampleClass" t1

