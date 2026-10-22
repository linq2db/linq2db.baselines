-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 0

SELECT
	e.Id as Id,
	Coalesce(j.Value1, 0) + 1 as Plus,
	Unwrap(CAST(Coalesce(j.Value1, 0) AS Uint32)) | Unwrap(CAST(1 AS Uint32)) as Bitwise,
	CASE
		WHEN Coalesce(j.Value1, 0) < 5 THEN 'a'u
		ELSE 'b'u
	END as Compare,
	CASE
		WHEN Coalesce(j.Value1, 0) IN ($Ids0_1) THEN 'y'u
		ELSE 'n'u
	END as InList,
	CASE
		WHEN 0 IN (Coalesce(j.Value1, 0), 5) THEN 'y'u
		ELSE 'n'u
	END as ListItem,
	-Coalesce(j.Value1, 0) + 1 as Negated,
	CASE
		WHEN NOT Coalesce(j.Flag, false) THEN 't'u
		ELSE 'f'u
	END as NotFlag,
	CASE
		WHEN NOT (Coalesce(j.Flag, false) OR e.Id < 0) THEN 't'u
		ELSE 'f'u
	END as Logical,
	Abs(Coalesce(j.Value1, 0)) + 1 as AbsPlus,
	'x'u || Unwrap(CAST(Coalesce(j.Value1, 0) AS Text)) as c1,
	ABS(Coalesce(j.Value1, 0)) + 1 as Function_1,
	Unwrap(CAST(Coalesce(j.Value1, 0) AS Double)) + 1 as Cast_1,
	CASE
		WHEN e.Id > 0 THEN Coalesce(j.Value1, 0)
		ELSE 5
	END + 1 as Branch,
	Coalesce(j.Value1, 0) + 1 as Identity_1,
	Coalesce(j.Value1, 0) + 1 as AsNullable
FROM
	MissedJoinEntity e
		LEFT JOIN MissedJoinEntity j ON j.Id = e.Id + 1000

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.`Date` as Date_1,
	t1.Flag as Flag,
	t1.Name as Name
FROM
	MissedJoinEntity t1

-- YDB Ydb
SELECT
	j.Value1 as Value1
FROM
	MissedJoinEntity e
		LEFT JOIN MissedJoinEntity j ON j.Id = e.Id + 1000

