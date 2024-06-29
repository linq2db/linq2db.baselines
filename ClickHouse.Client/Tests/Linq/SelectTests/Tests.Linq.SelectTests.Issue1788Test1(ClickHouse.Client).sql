﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Table1788

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Table1788
(
	Id     Int32,
	Value1 Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Table1788
(
	Id,
	Value1
)
VALUES
(1,11),
(2,22),
(3,33)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Value1
FROM
	Table1788 t1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN l.Value1 IS NOT NULL THEN true
		ELSE false
	END,
	l.Value1
FROM
	Table1788 p
		LEFT JOIN Table1788 l ON l.Id = p.Id + 1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Table1788

