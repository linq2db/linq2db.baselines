-- DuckDB

SELECT
	STRING_AGG(t1.NullableValue, ', ' ORDER BY t1.NotNullableValue) FILTER (WHERE t1.NullableValue IN ('A', 'B'))
FROM
	SampleClass t1

