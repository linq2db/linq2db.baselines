-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
SELECT
	p.Id,
	p.TargetName,
	p.BdaValue
FROM
	Task p

-- ClickHouse.Driver ClickHouse
SELECT
	p.BdaValue
FROM
	Task p

