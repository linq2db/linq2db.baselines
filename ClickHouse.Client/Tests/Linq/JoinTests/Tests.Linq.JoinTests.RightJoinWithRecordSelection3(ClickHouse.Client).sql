BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Fact

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Fact
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Fact
(
	Id
)
VALUES
(3),
(4),
(5)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Tag

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	f.Id,
	ft.Id,
	ft.FactId,
	ft.Name
FROM
	Tag ft
		RIGHT JOIN Fact f ON ft.FactId = f.Id
WHERE
	f.Id > 3

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Tag

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Fact

