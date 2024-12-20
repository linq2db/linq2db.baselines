﻿BeforeExecute
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
	f.Id,
	ft.Id,
	ft.FactId,
	ft.Name
FROM
	Tag ft
		FULL JOIN Fact f ON ft.FactId = f.Id
WHERE
	f.Id > 3 OR ft.FactId > 3

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Tag

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Fact

