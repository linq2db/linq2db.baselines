BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Fact

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Fact
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Fact
(
	Id
)
VALUES
(toInt32(3)),
(toInt32(4)),
(toInt32(5))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Tag

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Tag
(
	Id     Int32,
	FactId Int32,
	Name   String,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Tag
(
	Id,
	FactId,
	Name
)
VALUES
(toInt32(1),toInt32(3),'Tag3'),
(toInt32(2),toInt32(3),'Tag3'),
(toInt32(3),toInt32(4),'Tag4'),
(toInt32(4),toInt32(6),'Tag6')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	fact_1.Id,
	leftTag.Id,
	leftTag.FactId,
	leftTag.Name
FROM
	Tag leftTag
		FULL JOIN Fact fact_1 ON leftTag.FactId = fact_1.Id
WHERE
	(fact_1.Id > toInt32(3) OR leftTag.FactId > toInt32(3))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Tag

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Fact

