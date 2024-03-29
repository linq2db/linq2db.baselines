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
(toInt32(3)),
(toInt32(4)),
(toInt32(5))

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
(toInt32(1),toInt32(3),'Tag3'),
(toInt32(2),toInt32(3),'Tag3'),
(toInt32(3),toInt32(4),'Tag4')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	fact_1.Id,
	tagGroup.Id,
	tagGroup.FactId,
	tagGroup.Name
FROM
	Fact fact_1
		LEFT JOIN Tag tagGroup ON fact_1.Id = tagGroup.FactId
WHERE
	fact_1.Id > toInt32(3)
ORDER BY
	fact_1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Tag

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Fact

