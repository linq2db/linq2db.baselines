-- ClickHouse.Octonica ClickHouse

INSERT INTO Names
(
	Id,
	Name
)
VALUES
(
	1,
	'name1'
)

-- ClickHouse.Octonica ClickHouse

INSERT INTO Names
(
	Id,
	Name
)
VALUES
(
	2,
	'name2'
)

-- ClickHouse.Octonica ClickHouse

INSERT INTO Addresses
(
	Id,
	Text
)
VALUES
(
	1,
	'address'
)

-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.Text
FROM
	(
		SELECT DISTINCT
			Item1.Id as Id
		FROM
			Names Item1
	) m_1
		INNER JOIN Addresses d ON m_1.Id = d.Id

-- ClickHouse.Octonica ClickHouse

SELECT
	tupledArg.Id,
	tupledArg.Name
FROM
	Names tupledArg
ORDER BY
	tupledArg.Id

