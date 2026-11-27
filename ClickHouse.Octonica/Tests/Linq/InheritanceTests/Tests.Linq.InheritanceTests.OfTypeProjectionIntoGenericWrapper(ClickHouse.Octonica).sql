-- ClickHouse.Octonica ClickHouse
INSERT INTO OfTypeTaskBase
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
	OfTypeTaskBase p

-- ClickHouse.Octonica ClickHouse
SELECT
	p.BdaValue
FROM
	OfTypeTaskBase p

