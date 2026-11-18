-- YDB Ydb
DECLARE key Text(13) -- String
SET     key = 'A-100A-100Жук'u

SELECT
	p.Id as Id
FROM
	ConcatProduct p
WHERE
	(p.Sku || p.Title) = $key

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Sku as Sku,
	t1.Title as Title
FROM
	ConcatProduct t1

