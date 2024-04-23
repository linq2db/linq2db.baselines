BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS BlobClass

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS BlobClass
(
	Id        Int32,
	BlobValue Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	_.Id,
	_.BlobValue
FROM
	BlobClass _
WHERE
	_.Id = 1
LIMIT 1

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	BlobClass
UPDATE
	BlobValue = '\x03\x02\x01'
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	_.Id,
	_.BlobValue
FROM
	BlobClass _
WHERE
	_.Id = 1
LIMIT 1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS BlobClass

