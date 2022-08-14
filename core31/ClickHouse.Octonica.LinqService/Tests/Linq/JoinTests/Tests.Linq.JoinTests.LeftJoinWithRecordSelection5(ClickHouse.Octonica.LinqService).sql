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
(
	toInt32(3)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Fact
(
	Id
)
VALUES
(
	toInt32(4)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Fact
(
	Id
)
VALUES
(
	toInt32(5)
)

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
(
	toInt32(1),
	toInt32(3),
	'Tag3'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	ft.Id,
	t.Id,
	t.FactId,
	t.Name
FROM
	Fact ft
		LEFT JOIN Tag t ON t.FactId = ft.Id
WHERE
	ft.Id > toInt32(3)
ORDER BY
	ft.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Tag

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Fact

