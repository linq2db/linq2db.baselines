BeforeExecute
-- ClickHouse.Client ClickHouse

WITH RECURSIVE cte AS
(
	SELECT
		p.Id,
		toString('Str1') as Str
	FROM
		Issue3360Table p
	UNION ALL
	SELECT
		t1.Id as Id,
		toString('Str2') as Str
	FROM
		cte t1
			INNER JOIN Issue3360Table r ON t1.Id = r.Id + 1
)
SELECT
	t2.Id,
	t2.Str
FROM
	cte t2

