-- YDB Ydb
SELECT
	Coalesce(ListConcat(ListNotNull(AsList(CASE
		WHEN x.NullableValue LIKE '%A%'u ESCAPE '~'s THEN x.NullableValue
		ELSE NULL
	END, CASE
		WHEN x.NotNullableValue LIKE '%A%'u ESCAPE '~'s THEN x.NotNullableValue
		ELSE NULL
	END, CASE
		WHEN x.VarcharValue LIKE '%A%'u ESCAPE '~'s THEN x.VarcharValue
		ELSE NULL
	END, CASE
		WHEN x.NVarcharValue LIKE '%A%'u ESCAPE '~'s THEN x.NVarcharValue
		ELSE NULL
	END)), ', 'u), ''u) as c1
FROM
	SampleClass x
WHERE
	Unwrap(CAST(Unicode::GetLength(Coalesce(ListConcat(ListNotNull(AsList(CASE
		WHEN x.NullableValue LIKE '%A%'u ESCAPE '~'s THEN x.NullableValue
		ELSE NULL
	END, CASE
		WHEN x.NotNullableValue LIKE '%A%'u ESCAPE '~'s THEN x.NotNullableValue
		ELSE NULL
	END, CASE
		WHEN x.VarcharValue LIKE '%A%'u ESCAPE '~'s THEN x.VarcharValue
		ELSE NULL
	END, CASE
		WHEN x.NVarcharValue LIKE '%A%'u ESCAPE '~'s THEN x.NVarcharValue
		ELSE NULL
	END)), ', 'u), ''u)) AS Int32)) <> 0

-- YDB Ydb
SELECT
	t1.PK as PK,
	t1.Id as Id,
	t1.NullableValue as NullableValue,
	t1.NotNullableValue as NotNullableValue,
	t1.VarcharValue as VarcharValue,
	t1.NVarcharValue as NVarcharValue
FROM
	SampleClass t1

