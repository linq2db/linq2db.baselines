-- Informix.DB2 Informix

SELECT
	Nvl(SUBSTRING(Nvl(', ' || CASE
		WHEN x.NullableValue LIKE '%A%' ESCAPE '~' THEN x.NullableValue
		ELSE NULL
	END, '') || Nvl(', ' || CASE
		WHEN x.NotNullableValue LIKE '%A%' ESCAPE '~' THEN x.NotNullableValue
		ELSE NULL
	END, '') || Nvl(', ' || CASE
		WHEN x.VarcharValue LIKE '%A%' ESCAPE '~' THEN x.VarcharValue
		ELSE NULL
	END, '') || Nvl(', ' || CASE
		WHEN x.NVarcharValue LIKE '%A%' ESCAPE '~' THEN x.NVarcharValue
		ELSE NULL
	END, '') FROM 3), '')
FROM
	SampleClass x
WHERE
	CHAR_LENGTH(Nvl(SUBSTRING(Nvl(', ' || CASE
		WHEN x.NullableValue LIKE '%A%' ESCAPE '~' THEN x.NullableValue
		ELSE NULL
	END, '') || Nvl(', ' || CASE
		WHEN x.NotNullableValue LIKE '%A%' ESCAPE '~' THEN x.NotNullableValue
		ELSE NULL
	END, '') || Nvl(', ' || CASE
		WHEN x.VarcharValue LIKE '%A%' ESCAPE '~' THEN x.VarcharValue
		ELSE NULL
	END, '') || Nvl(', ' || CASE
		WHEN x.NVarcharValue LIKE '%A%' ESCAPE '~' THEN x.NVarcharValue
		ELSE NULL
	END, '') FROM 3), '') || '.') <> 1

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.NullableValue,
	t1.NotNullableValue,
	t1.VarcharValue,
	t1.NVarcharValue
FROM
	SampleClass t1

