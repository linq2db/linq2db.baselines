-- YDB Ydb
DECLARE $bound Date
SET     $bound = Date('2000-01-01')

SELECT
	e.Id as Id,
	CASE
		WHEN Coalesce(j.`Day`, Date('1970-01-01')) > $bound THEN 'y'u
		ELSE 'n'u
	END as Later,
	CASE
		WHEN Coalesce(j.`Day`, Date('1970-01-01')) < $bound THEN 'y'u
		ELSE 'n'u
	END as Earlier,
	CASE
		WHEN Coalesce(j.`Day`, Date('1970-01-01')) > e.`Day` THEN 'y'u
		ELSE 'n'u
	END as AfterOwn,
	CASE
		WHEN Coalesce(j.`Day`, Date('1970-01-01')) <= e.`Day` THEN 'y'u
		ELSE 'n'u
	END as AtMostOwn
FROM
	MissedDayEntity e
		LEFT JOIN MissedDayEntity j ON j.Id = e.Id + 1000

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.`Day` as Day_1
FROM
	MissedDayEntity t1

-- YDB Ydb
SELECT
	DateTime::GetYear(Coalesce(j.`Day`, Date('1970-01-01'))) as Year_1
FROM
	MissedDayEntity e
		LEFT JOIN MissedDayEntity j ON j.Id = e.Id + 1000

