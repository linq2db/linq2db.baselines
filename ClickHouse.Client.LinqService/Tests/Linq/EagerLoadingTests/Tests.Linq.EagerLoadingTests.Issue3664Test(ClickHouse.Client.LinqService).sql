BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Test3664

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Test3664
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Test3664
(
	Id
)
VALUES
(
	1
)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Test3664Item

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Test3664Item
(
	Id     Int32,
	TestId Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Test3664Item
(
	Id,
	TestId
)
VALUES
(
	11,
	1
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Test3664Item
(
	Id,
	TestId
)
VALUES
(
	12,
	1
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.TestId
FROM
	Test3664 m_1
		INNER JOIN Test3664Item d ON m_1.Id = d.TestId
WHERE
	d.Id = 11

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id
FROM
	Test3664 t1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.TestId
FROM
	Test3664 m_1
		INNER JOIN Test3664Item d ON m_1.Id = d.TestId
WHERE
	d.Id = 12

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id
FROM
	Test3664 t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Test3664Item

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Test3664

