-- YDB Ydb
SELECT
	r.Id as Id,
	r.Currency1Amount as Currency1Amount,
	r.Currency2Amount as Currency2Amount
FROM
	Balance r
WHERE
	r.Currency1Amount IS NOT NULL OR r.Currency2Amount IS NOT NULL

