BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	x.c1
FROM
	(
		SELECT
			arrayStringConcat([CASE
				WHEN position(t.NullableValue, 'A') > 0 THEN t.NullableValue
				ELSE NULL
			END, CASE
				WHEN position(t.NotNullableValue, 'A') > 0 THEN t.NotNullableValue
				ELSE NULL
			END, CASE
				WHEN position(t.VarcharValue, 'A') > 0 THEN t.VarcharValue
				ELSE NULL
			END, CASE
				WHEN position(t.NVarcharValue, 'A') > 0 THEN t.NVarcharValue
				ELSE NULL
			END], ', ') as c1
		FROM
			SampleClass t
	) x
WHERE
	NOT empty(replaceRegexpAll(coalesce(x.c1, ''), '	|
|||| || | | | | | | | | | | | | | | | |　', ''))

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.NullableValue,
	t1.NotNullableValue,
	t1.VarcharValue,
	t1.NVarcharValue
FROM
	SampleClass t1

