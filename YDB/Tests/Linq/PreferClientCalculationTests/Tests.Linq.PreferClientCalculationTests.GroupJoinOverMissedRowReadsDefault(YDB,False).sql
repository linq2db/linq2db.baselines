-- YDB Ydb
SELECT
	e.Id as Id,
	Unwrap(CAST(Coalesce(j.Value1, 0) AS Text)) as c1,
	Coalesce(j.Value1, 0) + 1 as Plus
FROM
	TranslatedMemberEntity e
		LEFT JOIN TranslatedMemberEntity j ON e.Id + 1000 = j.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.`Date` as Date_1,
	t1.`Key` as Key_1,
	t1.Name as Name
FROM
	TranslatedMemberEntity t1

