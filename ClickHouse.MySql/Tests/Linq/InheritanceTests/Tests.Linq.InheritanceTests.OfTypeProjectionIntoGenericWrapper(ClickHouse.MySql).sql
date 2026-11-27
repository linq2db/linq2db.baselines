-- ClickHouse.MySql ClickHouse
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

-- ClickHouse.MySql ClickHouse
SELECT
	p.Id,
	p.TargetName,
	p.BdaValue
FROM
	OfTypeTaskBase p

-- ClickHouse.MySql ClickHouse
SELECT
	p.BdaValue
FROM
	OfTypeTaskBase p

