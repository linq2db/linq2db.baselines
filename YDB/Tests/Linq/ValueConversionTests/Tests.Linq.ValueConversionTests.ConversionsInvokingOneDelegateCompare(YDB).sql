-- YDB Ydb
SELECT
	r.Id as Id
FROM
	ShiftedDateRow r
WHERE
	r.Plain = r.`Date`

