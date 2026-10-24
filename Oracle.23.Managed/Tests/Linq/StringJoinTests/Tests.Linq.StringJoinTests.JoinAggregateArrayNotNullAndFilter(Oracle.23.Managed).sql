-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	x."c1"
FROM
	(
		SELECT
			SUBSTR(CASE
				WHEN t."NullableValue" IS NULL OR t."NullableValue" NOT LIKE '%A%' ESCAPE '~'
					THEN N''
				ELSE To_NChar(', ' || CASE
					WHEN t."NullableValue" LIKE '%A%' ESCAPE '~' THEN t."NullableValue"
					ELSE NULL
				END)
			END || CASE
				WHEN t."NotNullableValue" NOT LIKE '%A%' ESCAPE '~' THEN N''
				ELSE To_NChar(', ' || CASE
					WHEN t."NotNullableValue" LIKE '%A%' ESCAPE '~' THEN t."NotNullableValue"
					ELSE NULL
				END)
			END || CASE
				WHEN t."VarcharValue" IS NULL OR t."VarcharValue" NOT LIKE '%A%' ESCAPE '~'
					THEN N''
				ELSE To_NChar(', ' || CASE
					WHEN t."VarcharValue" LIKE '%A%' ESCAPE '~' THEN t."VarcharValue"
					ELSE NULL
				END)
			END || CASE
				WHEN t."NVarcharValue" IS NULL OR t."NVarcharValue" NOT LIKE N'%A%' ESCAPE '~'
					THEN N''
				ELSE To_NChar(', ' || CASE
					WHEN t."NVarcharValue" LIKE N'%A%' ESCAPE '~' THEN t."NVarcharValue"
					ELSE NULL
				END)
			END, 3) as "c1",
			Length(SUBSTR(CASE
				WHEN t."NullableValue" IS NULL OR t."NullableValue" NOT LIKE '%A%' ESCAPE '~'
					THEN N''
				ELSE To_NChar(', ' || CASE
					WHEN t."NullableValue" LIKE '%A%' ESCAPE '~' THEN t."NullableValue"
					ELSE NULL
				END)
			END || CASE
				WHEN t."NotNullableValue" NOT LIKE '%A%' ESCAPE '~' THEN N''
				ELSE To_NChar(', ' || CASE
					WHEN t."NotNullableValue" LIKE '%A%' ESCAPE '~' THEN t."NotNullableValue"
					ELSE NULL
				END)
			END || CASE
				WHEN t."VarcharValue" IS NULL OR t."VarcharValue" NOT LIKE '%A%' ESCAPE '~'
					THEN N''
				ELSE To_NChar(', ' || CASE
					WHEN t."VarcharValue" LIKE '%A%' ESCAPE '~' THEN t."VarcharValue"
					ELSE NULL
				END)
			END || CASE
				WHEN t."NVarcharValue" IS NULL OR t."NVarcharValue" NOT LIKE N'%A%' ESCAPE '~'
					THEN N''
				ELSE To_NChar(', ' || CASE
					WHEN t."NVarcharValue" LIKE N'%A%' ESCAPE '~' THEN t."NVarcharValue"
					ELSE NULL
				END)
			END, 3)) as "Length_1"
		FROM
			"SampleClass" t
	) x
WHERE
	NOT (x."c1" IS NULL OR x."Length_1" = 0 AND x."Length_1" IS NOT NULL)

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

