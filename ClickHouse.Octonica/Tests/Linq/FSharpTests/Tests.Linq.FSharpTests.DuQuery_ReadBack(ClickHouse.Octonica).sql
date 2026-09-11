-- ClickHouse.Octonica ClickHouse
INSERT INTO DuRow
(
	Id,
	Key
)
VALUES
(
	1,
	10
)

-- ClickHouse.Octonica ClickHouse
INSERT INTO DuRow
(
	Id,
	Key
)
VALUES
(
	2,
	20
)

-- ClickHouse.Octonica ClickHouse
SELECT
	x.Key
FROM
	DuRow x
ORDER BY
	x.Id

