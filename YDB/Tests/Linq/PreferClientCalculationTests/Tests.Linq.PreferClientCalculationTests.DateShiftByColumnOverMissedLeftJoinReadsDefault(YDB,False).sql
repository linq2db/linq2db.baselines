-- YDB Ydb
SELECT
	e.Value1 as Value1,
	Coalesce(j.`Date`, Timestamp('1970-01-01T00:00:00.000000Z')) + DateTime::IntervalFromDays(e.Value1) as c1,
	DateTime::GetYear(Coalesce(j.`Date`, Timestamp('1970-01-01T00:00:00.000000Z')) + DateTime::IntervalFromDays(e.Value1)) as Year_1,
	DateTime::GetDayOfMonth(Coalesce(j.`Date`, Timestamp('1970-01-01T00:00:00.000000Z')) + DateTime::IntervalFromDays(e.Value1)) as Day_1
FROM
	TranslatedMemberEntity e
		LEFT JOIN TranslatedMemberEntity j ON j.Id = e.Id + 1000

