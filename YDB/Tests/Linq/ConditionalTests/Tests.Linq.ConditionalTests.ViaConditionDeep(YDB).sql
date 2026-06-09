-- YDB Ydb

SELECT
	x.Id as Id,
	x.StringProp = '1'u OR x.StringProp IS NULL as child,
	CASE
		WHEN x.StringProp = '2'u THEN true
		ELSE false
	END as child_1,
	x.StringProp as StringProp,
	1 as IntProp,
	Coalesce(x.StringProp, ''u) || '2'u as StringProp_1,
	2 as IntProp_1
FROM
	ConditionalData x
WHERE
	CASE
		WHEN x.StringProp = '1'u OR x.StringProp IS NULL THEN '2'u
		WHEN x.StringProp = '2'u THEN x.StringProp
		ELSE Coalesce(x.StringProp, ''u) || '2'u
	END LIKE '%2'u ESCAPE '~'s AND
	CASE
		WHEN x.StringProp = '1'u OR x.StringProp IS NULL THEN NULL
		WHEN x.StringProp = '2'u THEN 1
		ELSE 2
	END = 2

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.StringProp as StringProp
FROM
	ConditionalData t1

