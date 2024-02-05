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
(
	toInt32(3)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Fact
(
	Id
)
VALUES
(
	toInt32(4)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Fact
(
	Id
)
VALUES
(
	toInt32(5)
)

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
(
	toInt32(1),
	toInt32(3),
	'Tag3'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Tag
(
	Id,
	FactId,
	Name
)
VALUES
(
	toInt32(2),
	toInt32(3),
	'Tag3'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Tag
(
	Id,
	FactId,
	Name
)
VALUES
(
	toInt32(3),
	toInt32(4),
	'Tag4'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Tag
(
	Id,
	FactId,
	Name
)
VALUES
(
	toInt32(4),
	toInt32(6),
	'Tag6'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	f.Id,
	ft.Id,
	ft.FactId,
	ft.Name
FROM
	Tag ft
		FULL JOIN Fact f ON ft.FactId = f.Id
WHERE
	(f.Id > toInt32(3) OR ft.FactId > toInt32(3))

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Tag

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Fact

