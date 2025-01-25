BeforeExecute
-- ClickHouse.Octonica ClickHouse

WITH RECURSIVE cte AS
(
	SELECT
		p.Id,
		toUUID(NULL) as Guid
	FROM
		Issue3360NullInAnchor p
	UNION ALL
	SELECT
		t1.Id as Id,
		r.Guid as Guid
	FROM
		cte t1
			INNER JOIN Issue3360NullInAnchor r ON t1.Id = r.Id + 100
)
SELECT
	t2.Id,
	t2.Guid
FROM
	cte t2

