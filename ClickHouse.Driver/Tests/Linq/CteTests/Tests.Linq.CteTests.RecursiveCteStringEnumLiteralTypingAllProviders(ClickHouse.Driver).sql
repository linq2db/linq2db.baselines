-- ClickHouse.Driver ClickHouse
WITH RECURSIVE cte AS
(
	SELECT
		p.Id as Id,
		p.Str as Str
	FROM
		CteStringEnumTable p
	UNION ALL
	SELECT
		t1.Id as Id,
		toString('THIS_IS_TWO') as Str
	FROM
		cte t1
			INNER JOIN CteStringEnumTable r ON t1.Id = r.Id + 1
)
SELECT
	t2.Id,
	t2.Str
FROM
	cte t2

