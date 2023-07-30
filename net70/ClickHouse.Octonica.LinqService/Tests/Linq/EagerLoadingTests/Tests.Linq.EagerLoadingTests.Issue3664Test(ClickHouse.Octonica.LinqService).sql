BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Test3664

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Test3664
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Test3664
(
	Id
)
VALUES
(
	toInt32(1)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Test3664Item

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Test3664Item
(
	Id     Int32,
	TestId Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Test3664Item
(
	Id,
	TestId
)
VALUES
(
	toInt32(11),
	toInt32(1)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Test3664Item
(
	Id,
	TestId
)
VALUES
(
	toInt32(12),
	toInt32(1)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	lw_Test3664.Id,
	a.Id,
	a.TestId
FROM
	Test3664 lw_Test3664
		INNER JOIN Test3664Item a ON lw_Test3664.Id = a.TestId AND a.Id = toInt32(11)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id
FROM
	Test3664 t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	lw_Test3664.Id,
	a.Id,
	a.TestId
FROM
	Test3664 lw_Test3664
		INNER JOIN Test3664Item a ON lw_Test3664.Id = a.TestId AND a.Id = toInt32(12)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id
FROM
	Test3664 t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Test3664Item

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Test3664

