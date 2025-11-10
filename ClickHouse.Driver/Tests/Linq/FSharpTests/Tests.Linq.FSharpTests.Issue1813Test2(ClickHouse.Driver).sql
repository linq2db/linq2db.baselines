-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.Text
FROM
	Names m_1
		INNER JOIN Addresses d ON m_1.Id = d.Id
ORDER BY
	m_1.Id

-- ClickHouse.Driver ClickHouse

SELECT
	tupledArg.Id,
	tupledArg.Name
FROM
	Names tupledArg
ORDER BY
	tupledArg.Id

