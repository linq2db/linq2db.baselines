BeforeExecute
-- ClickHouse.Driver ClickHouse

WITH RECURSIVE cte AS
(
	SELECT
		p.Id,
		toString(NULL) as Enum1
	FROM
		Issue3360NullInAnchor p
	UNION ALL
	SELECT
		t1.Id as Id,
		toString('THIS_IS_ONE') as Enum1
	FROM
		cte t1
			INNER JOIN Issue3360NullInAnchor r ON t1.Id = r.Id + 100
)
SELECT
	t2.Id,
	t2.Enum1
FROM
	cte t2

