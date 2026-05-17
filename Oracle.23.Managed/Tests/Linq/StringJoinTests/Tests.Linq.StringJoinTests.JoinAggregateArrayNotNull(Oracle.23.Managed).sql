-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	SUBSTR(CASE
		WHEN t."NullableValue" IS NULL THEN N''
		ELSE To_NChar(', ' || t."NullableValue")
	END || ', ' || t."NotNullableValue" || CASE
		WHEN t."VarcharValue" IS NULL THEN N''
		ELSE To_NChar(', ' || t."VarcharValue")
	END || CASE
		WHEN t."NVarcharValue" IS NULL THEN N''
		ELSE To_NChar(', ' || t."NVarcharValue")
	END, 3),
	Coalesce((
		SELECT
			LISTAGG(CAST(Coalesce(t2."NotNullDistinctValue", N'') AS VarChar(50)), ', ') WITHIN GROUP (ORDER BY t2."NotNullDistinctValue")
		FROM
			(
				SELECT DISTINCT
					t1."item" as "NotNullDistinctValue"
				FROM
					(
						SELECT To_NChar(t."NullableValue") AS "item" FROM sys.dual
						UNION ALL
						SELECT To_NChar(t."NotNullableValue") FROM sys.dual
						UNION ALL
						SELECT To_NChar(t."VarcharValue") FROM sys.dual
						UNION ALL
						SELECT t."NVarcharValue" FROM sys.dual) t1
				WHERE
					t1."item" IS NOT NULL
			) t2
	), '')
FROM
	"SampleClass" t

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

