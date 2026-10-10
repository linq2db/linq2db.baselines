-- YDB Ydb
DECLARE $bound Timestamp -- DateTime2
SET     $bound = Timestamp('2000-01-01T00:00:00.000000Z')

SELECT
	e.Id as Id,
	Coalesce(j.Value1, 0) + 1 as Plus,
	CASE
		WHEN Coalesce(j.Value1, 0) < 5 THEN 'a'u
		ELSE 'b'u
	END as Compare,
	Abs(Coalesce(j.Value1, 0) - 1) as c1,
	CASE
		WHEN Coalesce(j.`Date`, Timestamp('1970-01-01T00:00:00.000000Z')) > $bound
			THEN 'y'u
		ELSE 'n'u
	END as Later,
	CASE
		WHEN Coalesce(j.`Date`, Timestamp('1970-01-01T00:00:00.000000Z')) < $bound
			THEN 'y'u
		ELSE 'n'u
	END as Earlier,
	CASE
		WHEN Coalesce(j.`Date`, Timestamp('1970-01-01T00:00:00.000000Z')) > e.`Date`
			THEN 'y'u
		ELSE 'n'u
	END as AfterOwn,
	CASE
		WHEN Coalesce(j.`Date`, Timestamp('1970-01-01T00:00:00.000000Z')) <= e.`Date`
			THEN 'y'u
		ELSE 'n'u
	END as AtMostOwn
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
	DateTime::GetYear(Coalesce(j.`Date`, Timestamp('1970-01-01T00:00:00.000000Z'))) as Year_1
FROM
	MissedJoinEntity e
		LEFT JOIN MissedJoinEntity j ON j.Id = e.Id + 1000

