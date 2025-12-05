-- PostgreSQL.18 PostgreSQL

SELECT
	CONCAT_WS(', ', CASE
		WHEN x."NullableValue" LIKE '%A%' ESCAPE '~' THEN x."NullableValue"
		ELSE NULL
	END, CASE
		WHEN x."NotNullableValue" LIKE '%A%' ESCAPE '~' THEN x."NotNullableValue"
		ELSE NULL
	END, CASE
		WHEN x."VarcharValue" LIKE '%A%' ESCAPE '~' THEN x."VarcharValue"
		ELSE NULL
	END, CASE
		WHEN x."NVarcharValue" LIKE '%A%' ESCAPE '~' THEN x."NVarcharValue"
		ELSE NULL
	END)
FROM
	"SampleClass" x
WHERE
	Length(CONCAT_WS(', ', CASE
		WHEN x."NullableValue" LIKE '%A%' ESCAPE '~' THEN x."NullableValue"
		ELSE NULL
	END, CASE
		WHEN x."NotNullableValue" LIKE '%A%' ESCAPE '~' THEN x."NotNullableValue"
		ELSE NULL
	END, CASE
		WHEN x."VarcharValue" LIKE '%A%' ESCAPE '~' THEN x."VarcharValue"
		ELSE NULL
	END, CASE
		WHEN x."NVarcharValue" LIKE '%A%' ESCAPE '~' THEN x."NVarcharValue"
		ELSE NULL
	END)) <> 0

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."NullableValue",
	t1."NotNullableValue",
	t1."VarcharValue",
	t1."NVarcharValue"
FROM
	"SampleClass" t1

