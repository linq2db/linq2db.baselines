-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
SELECT
	p.Id,
	p.TargetName,
	p.BdaValue
FROM
	OfTypeTaskBase p

-- ClickHouse.Driver ClickHouse
SELECT
	p.BdaValue
FROM
	OfTypeTaskBase p

