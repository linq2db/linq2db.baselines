-- YDB Ydb
SELECT
	r.Id as Id
FROM
	Issue5975Row r
WHERE
	r.Plain = r.`Date`

