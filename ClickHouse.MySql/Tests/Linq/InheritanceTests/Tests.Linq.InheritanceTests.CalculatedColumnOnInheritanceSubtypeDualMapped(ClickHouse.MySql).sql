-- ClickHouse.MySql ClickHouse

INSERT INTO CalcSubtypeDual
(
	Id,
	Type,
	Stored
)
VALUES
(
	1,
	1,
	'John'
)

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Type,
	t1.Id,
	t1.Stored,
	concat(Coalesce(t1.Stored, ''), '!')
FROM
	CalcSubtypeDual t1
LIMIT 2

