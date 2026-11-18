-- ClickHouse.MySql ClickHouse
INSERT INTO Task
(
	Id,
	TargetName,
	BdaValue
)
VALUES
(
	1,
	'bda.Requests',
	'Bda value'
)

-- ClickHouse.MySql ClickHouse
SELECT
	p.Id,
	p.TargetName,
	p.BdaValue
FROM
	Task p

-- ClickHouse.MySql ClickHouse
SELECT
	p.BdaValue
FROM
	Task p

