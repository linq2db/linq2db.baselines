﻿BeforeExecute
--  ClickHouse.Octonica ClickHouse

INSERT INTO TestBool
(
	Id,
	Value
)
VALUES
(
	1,
	false
)

BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	TestBool t1
LIMIT 2

BeforeExecute
--  ClickHouse.Octonica ClickHouse

ALTER TABLE
	TestBool
UPDATE
	Id = 1,
	Value = NOT Value
WHERE 1

BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	TestBool t1
LIMIT 2

