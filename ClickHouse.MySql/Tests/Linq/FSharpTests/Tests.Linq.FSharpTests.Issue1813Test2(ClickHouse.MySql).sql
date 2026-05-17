-- ClickHouse.MySql ClickHouse

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

-- ClickHouse.MySql ClickHouse

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

-- ClickHouse.MySql ClickHouse

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

-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.Text
FROM
	Names m_1
		INNER JOIN Addresses d ON m_1.Id = d.Id
ORDER BY
	m_1.Id

-- ClickHouse.MySql ClickHouse

SELECT
	after_1.Id,
	after_1.Name
FROM
	Names after_1
ORDER BY
	after_1.Id

