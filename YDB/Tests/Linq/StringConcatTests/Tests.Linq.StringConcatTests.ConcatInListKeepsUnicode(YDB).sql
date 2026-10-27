-- YDB Ydb
DECLARE $suffix Text(3) -- String
SET     $suffix = 'Жук'u
DECLARE $Ids0_1 Text(8) -- String
SET     $Ids0_1 = 'A-100Щит'u
DECLARE $Ids0_2 Text(8) -- String
SET     $Ids0_2 = 'B-200Жук'u

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

