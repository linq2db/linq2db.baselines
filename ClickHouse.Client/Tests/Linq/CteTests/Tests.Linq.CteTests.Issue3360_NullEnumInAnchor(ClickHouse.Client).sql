BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue3360NullInAnchor

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue3360NullInAnchor
(
	Id    Int32,
	Guid  Nullable(UUID),
	Enum1 Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

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

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue3360NullInAnchor

