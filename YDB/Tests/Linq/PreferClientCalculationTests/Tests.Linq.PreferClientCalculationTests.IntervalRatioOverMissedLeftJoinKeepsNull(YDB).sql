-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(e.Date2 - e.`Date` AS Int64)) * 10l AS Double)) / CAST(CAST(j.Date2 - j.`Date` AS Int64) * 10l AS Double) as c1
FROM
	MissedDivisorEntity e
		LEFT JOIN MissedDivisorEntity j ON j.Id = e.Id + 1000

