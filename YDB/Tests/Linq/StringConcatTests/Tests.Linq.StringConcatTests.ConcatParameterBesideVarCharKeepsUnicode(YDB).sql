-- YDB Ydb
DECLARE $suffix Text(3) -- String
SET     $suffix = 'Жук'u

SELECT
	p.Id as Id,
	p.Sku || Coalesce($suffix, ''u) as Tail,
	Coalesce($suffix, ''u) || p.Sku || Coalesce($suffix, ''u) as Framed,
	p.Sku || Coalesce($suffix, ''u) as Call_1
FROM
	ConcatProduct p

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Sku as Sku,
	t1.Title as Title
FROM
	ConcatProduct t1

