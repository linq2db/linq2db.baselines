-- ClickHouse.MySql ClickHouse
WITH RECURSIVE cte AS
(
	SELECT
		p.Id as Id,
		toUUID(NULL) as Guid
	FROM
		CteNullInAnchorTable p
	UNION ALL
	SELECT
		t1.Id as Id,
		r.Guid as Guid
	FROM
		cte t1
			INNER JOIN CteNullInAnchorTable r ON t1.Id = r.Id + 100
)
SELECT
	t2.Id,
	t2.Guid
FROM
	cte t2

