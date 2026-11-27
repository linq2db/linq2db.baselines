-- ClickHouse.Driver ClickHouse
WITH RECURSIVE cte AS
(
	SELECT
		p.Id as Id,
		toString(NULL) as Enum1
	FROM
		CteNullInAnchorTable p
	UNION ALL
	SELECT
		t1.Id as Id,
		toString('THIS_IS_ONE') as Enum1
	FROM
		cte t1
			INNER JOIN CteNullInAnchorTable r ON t1.Id = r.Id + 100
)
SELECT
	t2.Id,
	t2.Enum1
FROM
	cte t2

