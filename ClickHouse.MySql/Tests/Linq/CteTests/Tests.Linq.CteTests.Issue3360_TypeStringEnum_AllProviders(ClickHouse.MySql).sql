BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue3360WithEnum

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue3360WithEnum
(
	Id  Int32,
	Str String
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

WITH RECURSIVE cte AS
(
	SELECT
		p.Id,
		p.Str
	FROM
		Issue3360WithEnum p
	UNION ALL
	SELECT
		t1.Id as Id,
		toString('THIS_IS_TWO') as Str
	FROM
		cte t1
			INNER JOIN Issue3360WithEnum r ON t1.Id = r.Id + 1
)
SELECT
	t2.Id,
	t2.Str
FROM
	cte t2

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue3360WithEnum

