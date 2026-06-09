-- YDB Ydb

SELECT
	Unwrap(CAST(t.Id AS Text)) as c1
FROM
	TableWithGuid t
LIMIT 1

-- YDB Ydb

SELECT
	t.Id as Id,
	t.NullableGuid as NullableGuid
FROM
	TableWithGuid t
WHERE
	Unwrap(CAST(t.Id AS Text)) LIKE '%63d-0f%'u ESCAPE '~'s

-- YDB Ydb

SELECT
	t.Id as Id,
	t.NullableGuid as NullableGuid
FROM
	TableWithGuid t
WHERE
	Unwrap(CAST(t.Id AS Text)) LIKE 'bc7b6%'u ESCAPE '~'s

-- YDB Ydb

SELECT
	t.Id as Id,
	t.NullableGuid as NullableGuid
FROM
	TableWithGuid t
WHERE
	Unwrap(CAST(t.Id AS Text)) LIKE '%8f4-53%'u ESCAPE '~'s

-- YDB Ydb

SELECT
	t.Id as Id,
	t.NullableGuid as NullableGuid
FROM
	TableWithGuid t
WHERE
	Unicode::ToLower(Unwrap(CAST(t.Id AS Text))) LIKE '8f4-53%'u ESCAPE '~'s

