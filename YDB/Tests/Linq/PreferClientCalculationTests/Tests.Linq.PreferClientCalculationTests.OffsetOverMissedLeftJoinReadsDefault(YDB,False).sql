-- YDB Ydb
SELECT
	e.Id as Id,
	CASE
		WHEN Coalesce(j.Moment, Timestamp('1970-01-01T00:00:00.000000Z')) > e.Moment
			THEN 'y'u
		ELSE 'n'u
	END as AfterOwn,
	CASE
		WHEN Coalesce(j.Moment, Timestamp('1970-01-01T00:00:00.000000Z')) <= e.Moment
			THEN 'y'u
		ELSE 'n'u
	END as AtMostOwn
FROM
	MissedMomentEntity e
		LEFT JOIN MissedMomentEntity j ON j.Id = e.Id + 1000

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Moment as Moment
FROM
	MissedMomentEntity t1

-- YDB Ydb
SELECT
	DateTime::GetYear(Coalesce(j.Moment, Timestamp('1970-01-01T00:00:00.000000Z'))) as Year_1
FROM
	MissedMomentEntity e
		LEFT JOIN MissedMomentEntity j ON j.Id = e.Id + 1000

