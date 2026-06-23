-- DuckDB
DECLARE $group  -- Int32
SET     $group = 7

SELECT
	p.Id,
	LAG(p.Id) OVER(ORDER BY p."Order"),
	LAG(p.Id IGNORE NULLS) OVER(ORDER BY p."Order"),
	LEAD(p.Id) OVER(ORDER BY p."Order" DESC),
	LEAD(p.Id IGNORE NULLS) OVER(ORDER BY p."Order" DESC)
FROM
	"Position" p
WHERE
	p."Group" = $group
ORDER BY
	p."Order"

