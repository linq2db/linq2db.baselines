-- YDB Ydb
SELECT
	r.Id as Id,
	r.Grace as Grace,
	r.Required as Required
FROM
	OptionalDurationRow r
ORDER BY
	r.Id

