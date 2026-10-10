-- YDB Ydb
SELECT
	e.Value1 as Value1,
	Unwrap(CAST(Coalesce(j.Value1, 0) AS Text)) as c1,
	Unwrap(CAST(Coalesce(j.`Key`, Uuid('00000000-0000-0000-0000-000000000000')) AS Text)) as c2,
	MAX_OF(Coalesce(j.Value1, 0), 5) as c3,
	MIN_OF(Coalesce(j.Value1, 0), -5) as c4,
	Unwrap(CAST(Coalesce(j.Value1, 0) AS Text)) || '!'u as c5,
	Coalesce(j.Name, ''u) || '!'u as c6,
	Coalesce(j.`Date`, Timestamp('1970-01-01T00:00:00.000000Z')) + DateTime::IntervalFromDays(Unwrap(CAST(Double('10') AS Int32))) as Shifted,
	DateTime::GetYear(Coalesce(j.`Date`, Timestamp('1970-01-01T00:00:00.000000Z')) + DateTime::IntervalFromDays(Unwrap(CAST(Double('10') AS Int32)))) as Year_1,
	DateTime::GetDayOfMonth(Coalesce(j.`Date`, Timestamp('1970-01-01T00:00:00.000000Z')) + DateTime::IntervalFromDays(Unwrap(CAST(Double('10') AS Int32)))) as Day_1
FROM
	TranslatedMemberEntity e
		LEFT JOIN TranslatedMemberEntity j ON j.Id = e.Id + 1000

