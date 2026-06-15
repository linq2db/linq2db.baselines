-- YDB Ydb

SELECT
	Unicode::ToLower(Unwrap(CAST(t.Id AS Text))) as c1
FROM
	TableWithGuid t

-- YDB Ydb

SELECT
	t.Id as Id
FROM
	TableWithGuid t
WHERE
	Unicode::ToLower(Unwrap(CAST(t.Id AS Text))) = 'x'u

