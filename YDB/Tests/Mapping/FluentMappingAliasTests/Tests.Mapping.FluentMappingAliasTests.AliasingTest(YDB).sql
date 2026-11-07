-- YDB Ydb
SELECT
	t.Id as Id,
	t.`Value` as Value_1,
	t.ValueStr as ValueStr
FROM
	InstanceClass t
WHERE
	t.Id > 1 AND
	t.`Value` >= 104 AND
	t.`Value` <= 115 AND
	t.ValueStr LIKE 'S%'u ESCAPE '~'s

-- YDB Ydb
SELECT
	t.Id as Id,
	t.`Value` as Value_1,
	t.ValueStr as ValueStr
FROM
	InstanceClass t
WHERE
	t.Id > 1 AND
	t.`Value` >= 104 AND
	t.`Value` <= 115 AND
	t.ValueStr LIKE 'S%'u ESCAPE '~'s

