﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS BlobClass

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS BlobClass
(
	Id        Int32,
	BlobValue Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO BlobClass
(
	Id,
	BlobValue
)
VALUES
(
	1,
	'\x01\x02\x03'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.BlobValue
FROM
	BlobClass t1
WHERE
	t1.Id = 1
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	BlobClass
UPDATE
	BlobValue = '\x03\x02\x01'
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.BlobValue
FROM
	BlobClass t1
WHERE
	t1.Id = 1
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS BlobClass

