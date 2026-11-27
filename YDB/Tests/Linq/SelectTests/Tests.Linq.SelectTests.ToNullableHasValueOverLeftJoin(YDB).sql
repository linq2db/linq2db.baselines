-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Value1 as Value1
FROM
	NullableLeftJoinTable t1

-- YDB Ydb
SELECT
	l.Value1 as Value1
FROM
	NullableLeftJoinTable p
		LEFT JOIN NullableLeftJoinTable l ON l.Id = p.Id + 1

