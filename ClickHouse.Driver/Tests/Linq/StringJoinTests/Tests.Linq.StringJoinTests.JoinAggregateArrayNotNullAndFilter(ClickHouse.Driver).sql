-- ClickHouse.Driver ClickHouse

SELECT
	arrayStringConcat([CASE
		WHEN position(x.NullableValue, 'A') > 0 THEN x.NullableValue
		ELSE NULL
	END, CASE
		WHEN position(x.NotNullableValue, 'A') > 0 THEN x.NotNullableValue
		ELSE NULL
	END, CASE
		WHEN position(x.VarcharValue, 'A') > 0 THEN x.VarcharValue
		ELSE NULL
	END, CASE
		WHEN position(x.NVarcharValue, 'A') > 0 THEN x.NVarcharValue
		ELSE NULL
	END], ', ')
FROM
	SampleClass x
WHERE
	lengthUTF8(arrayStringConcat([CASE
		WHEN position(x.NullableValue, 'A') > 0 THEN x.NullableValue
		ELSE NULL
	END, CASE
		WHEN position(x.NotNullableValue, 'A') > 0 THEN x.NotNullableValue
		ELSE NULL
	END, CASE
		WHEN position(x.VarcharValue, 'A') > 0 THEN x.VarcharValue
		ELSE NULL
	END, CASE
		WHEN position(x.NVarcharValue, 'A') > 0 THEN x.NVarcharValue
		ELSE NULL
	END], ', ')) <> 0

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.NullableValue,
	t1.NotNullableValue,
	t1.VarcharValue,
	t1.NVarcharValue
FROM
	SampleClass t1

