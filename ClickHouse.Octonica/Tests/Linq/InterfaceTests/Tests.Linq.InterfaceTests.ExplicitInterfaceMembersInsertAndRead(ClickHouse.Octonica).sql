-- ClickHouse.Octonica ClickHouse
INSERT INTO ExplicitInterfaceTable
(
	Id,
	Prop1,
	Prop2,
	Prop3,
	Prop4
)
VALUES
(
	1,
	2,
	11,
	3,
	22
)

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.Prop1,
	t1.Prop3
FROM
	ExplicitInterfaceTable t1
LIMIT 2

