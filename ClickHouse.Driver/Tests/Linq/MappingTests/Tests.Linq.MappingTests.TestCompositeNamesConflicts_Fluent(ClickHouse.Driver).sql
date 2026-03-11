-- ClickHouse.Driver ClickHouse

INSERT INTO Issue5266TableFluent
(
	Id,
	child1_name,
	child2_name
)
VALUES
(
	1,
	'name1',
	'name2'
)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.child1_name,
	t1.child2_name
FROM
	Issue5266TableFluent t1
LIMIT 2

