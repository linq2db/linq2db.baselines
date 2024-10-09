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
(
	3
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Fact
(
	Id
)
VALUES
(
	4
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Fact
(
	Id
)
VALUES
(
	5
)

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
(
	1,
	3,
	'Tag3'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Tag
(
	Id,
	FactId,
	Name
)
VALUES
(
	2,
	3,
	'Tag3'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Tag
(
	Id,
	FactId,
	Name
)
VALUES
(
	3,
	4,
	'Tag4'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Tag
(
	Id,
	FactId,
	Name
)
VALUES
(
	4,
	6,
	'Tag6'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	fact_1.Id,
	t1.Id,
	t1.FactId,
	t1.Name
FROM
	Tag t1
		FULL JOIN Fact fact_1 ON t1.FactId = fact_1.Id
WHERE
	fact_1.Id > 3 OR t1.FactId > 3

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Tag

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Fact

