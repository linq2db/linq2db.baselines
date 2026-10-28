-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
SELECT
	p.Id,
	p.TargetName,
	p.BdaValue
FROM
	Task p

-- ClickHouse.Octonica ClickHouse
SELECT
	p.BdaValue
FROM
	Task p

