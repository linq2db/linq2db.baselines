BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Names

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Names
(
	Id   Int32,
	Name Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Addresses

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Addresses
(
	Id   Int32,
	Text Nullable(String)
)
ENGINE = Memory()

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	tupledArg.Id,
	tupledArg.Name
FROM
	Names tupledArg
ORDER BY
	tupledArg.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Addresses

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Names

