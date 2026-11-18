-- YDB Ydb
SELECT
	p.Id as Id,
	'Артикул 'u || p.Sku as Caption
FROM
	ConcatProduct p

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Sku as Sku,
	t1.Title as Title
FROM
	ConcatProduct t1

