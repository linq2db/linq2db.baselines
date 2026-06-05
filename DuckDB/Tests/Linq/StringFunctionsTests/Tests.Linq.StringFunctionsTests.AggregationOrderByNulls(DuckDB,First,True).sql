-- DuckDB

SELECT
	STRING_AGG(t1.Value2, ' -> ' ORDER BY t1.Value1 DESC NULLS FIRST)
FROM
	SampleClass t1

