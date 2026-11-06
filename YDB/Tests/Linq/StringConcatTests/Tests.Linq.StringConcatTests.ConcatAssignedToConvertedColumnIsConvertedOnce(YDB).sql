-- YDB Ydb
DECLARE p Text(2) -- String
SET     p = 'x:'u
DECLARE suffix Text(2) -- String
SET     suffix = '-s'u

UPDATE
	ConvertedTargetRow
SET
	Conv = Coalesce($p, ''u) || ConvertedTargetRow.Sku || Coalesce($suffix, ''u)

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Conv as Conv
FROM
	ConvertedTargetRow t1
LIMIT 2

