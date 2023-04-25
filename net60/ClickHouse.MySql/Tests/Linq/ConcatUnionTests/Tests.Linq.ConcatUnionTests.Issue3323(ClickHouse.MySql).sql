﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue3323Table

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue3323Table
(
	Id       Int32,
	FistName Nullable(String),
	LastName Nullable(String),
	Text     String,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue3323Table
(
	Id,
	FistName,
	LastName,
	Text
)
VALUES
(
	toInt32(1),
	'one',
	'two',
	'text'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Text,
	concat(t1.FistName, ' ', t1.LastName)
FROM
	Issue3323Table t1
UNION ALL
SELECT
	t2.Id,
	t2.Text,
	concat(t2.FistName, ' ', t2.LastName)
FROM
	Issue3323Table t2

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue3323Table

