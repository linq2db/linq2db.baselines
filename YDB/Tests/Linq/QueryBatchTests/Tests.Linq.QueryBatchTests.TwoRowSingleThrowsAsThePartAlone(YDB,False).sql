-- YDB Ydb
SELECT
	i.Id as Id,
	i.`Value` as Value_1,
	i.GroupId as GroupId,
	i.Name as Name
FROM
	BatchItem i
WHERE
	i.Id < 3
LIMIT 2

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.`Value` as Value_1,
	t1.GroupId as GroupId,
	t1.Name as Name
FROM
	BatchItem t1

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Value_1 as Value_1,
	t1.GroupId as GroupId,
	t1.Name as Name
FROM
	(
		SELECT
			1 as c1
	) t2
		CROSS JOIN (
			SELECT
				i.Id as Id,
				i.`Value` as Value_1,
				i.GroupId as GroupId,
				i.Name as Name
			FROM
				BatchItem i
			WHERE
				i.Id < 3
		) t1

