﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	UpdateSetTest
UPDATE
	Value2 = 11
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.Value2
FROM
	UpdateSetTest t1
WHERE
	t1.Id = 1
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	UpdateSetTest
UPDATE
	Value2 = 12
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.Value2
FROM
	UpdateSetTest t1
WHERE
	t1.Id = 1
LIMIT 2

