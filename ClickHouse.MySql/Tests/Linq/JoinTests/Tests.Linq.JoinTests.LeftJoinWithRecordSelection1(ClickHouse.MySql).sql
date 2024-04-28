BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Fact

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Fact
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Fact
(
	Id
)
VALUES
(3),
(4),
(5)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Tag

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

INSERT INTO Tag
(
	Id,
	FactId,
	Name
)
VALUES
(1,3,'Tag3'),
(2,3,'Tag3'),
(3,4,'Tag4')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	fact_1.Id,
	leftTag.Id,
	leftTag.FactId,
	leftTag.Name
FROM
	Fact fact_1
		LEFT JOIN Tag leftTag ON fact_1.Id = leftTag.FactId
WHERE
	fact_1.Id > 3
ORDER BY
	fact_1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Tag

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Fact

