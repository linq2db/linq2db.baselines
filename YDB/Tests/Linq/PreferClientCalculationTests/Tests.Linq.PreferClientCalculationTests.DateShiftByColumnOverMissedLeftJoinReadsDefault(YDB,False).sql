-- YDB Ydb
SELECT
	e.Value1 as Value1,
	j.`Date` + DateTime::IntervalFromDays(e.Value1) as c1,
	DateTime::GetYear(j.`Date` + DateTime::IntervalFromDays(e.Value1)) as Year_1,
	DateTime::GetDayOfMonth(j.`Date` + DateTime::IntervalFromDays(e.Value1)) as Day_1
FROM
	TranslatedMemberEntity e
		LEFT JOIN TranslatedMemberEntity j ON j.Id = e.Id + 1000

