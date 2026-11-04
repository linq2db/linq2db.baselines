-- YDB Ydb
DECLARE $suffix Text(3) -- String
SET     $suffix = 'Жук'u
DECLARE $Ids0_1 Text(8) -- String
SET     $Ids0_1 = 'A-100Жук'u
DECLARE $Ids0_2 Text(8) -- String
SET     $Ids0_2 = 'B-200Щит'u

SELECT
	p.Id as Id
FROM
	ConcatProduct p
WHERE
	(p.Sku || Coalesce($suffix, ''u)) IN ($Ids0_1, $Ids0_2)

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Sku as Sku,
	t1.Title as Title
FROM
	ConcatProduct t1

-- YDB Ydb
DECLARE $suffix Text(3) -- String
SET     $suffix = 'Жук'u

SELECT
	p.Id as Id
FROM
	ConcatProduct p
WHERE
	(p.Sku || Coalesce($suffix, ''u)) IN (p.Title, 'B-200Жук'u)

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Sku as Sku,
	t1.Title as Title
FROM
	ConcatProduct t1

