-- DuckDB
DECLARE $suffix NVarChar(3) -- String
SET     $suffix = 'Жук'

SELECT
	p.Id
FROM
	ConcatProduct p
WHERE
	(p.Sku || Coalesce($suffix, '')) IN ('A-100Жук', 'B-200Щит')

-- DuckDB
SELECT
	t1.Id,
	t1.Sku,
	t1.Title
FROM
	ConcatProduct t1

-- DuckDB
DECLARE $suffix NVarChar(3) -- String
SET     $suffix = 'Жук'

SELECT
	p.Id
FROM
	ConcatProduct p
WHERE
	(p.Sku || Coalesce($suffix, '')) IN (p.Title, 'B-200Жук')

-- DuckDB
SELECT
	t1.Id,
	t1.Sku,
	t1.Title
FROM
	ConcatProduct t1

