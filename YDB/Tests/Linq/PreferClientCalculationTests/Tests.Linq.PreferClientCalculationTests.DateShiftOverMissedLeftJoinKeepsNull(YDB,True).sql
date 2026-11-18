-- YDB Ydb
SELECT
	j.`Date` + DateTime::IntervalFromDays(-e.Value1) as c1,
	j.`Date` + DateTime::IntervalFromDays(Unwrap(CAST(Double('-1') AS Int32))) as InSql
FROM
	TranslatedMemberEntity e
		LEFT JOIN TranslatedMemberEntity j ON j.Id = e.Id + 1000

