-- DuckDB

SELECT
	CONCAT_WS(', ', t.NullableValue, t.NotNullableValue, t.VarcharValue, t.NVarcharValue),
	Coalesce((
		SELECT
			STRING_AGG(DISTINCT t1."item", ', ' ORDER BY t1."item")
		FROM
			(VALUES
				(t.NullableValue), (t.NotNullableValue), (t.VarcharValue),
				(t.NVarcharValue)
			) t1("item")
	), '')
FROM
	SampleClass t

-- DuckDB

SELECT
	t1.PK,
	t1.Id,
	t1.NullableValue,
	t1.NotNullableValue,
	t1.VarcharValue,
	t1.NVarcharValue
FROM
	SampleClass t1

