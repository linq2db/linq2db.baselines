-- YDB Ydb
DECLARE $suffix Text(3) -- String
SET     $suffix = 'Жук'u

SELECT
	p.Id as Id
FROM
	ConcatProduct p
WHERE
	(p.Sku || Coalesce($suffix, ''u)) = p.Title

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Sku as Sku,
	t1.Title as Title
FROM
	ConcatProduct t1

