BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS BlobClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS BlobClass
(
	Id        Int32,
	BlobValue Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO BlobClass
(
	Id,
	BlobValue
)
VALUES
(
	toInt32(1),
	'\x01\x02\x03'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	_.Id,
	_.BlobValue
FROM
	BlobClass _
WHERE
	_.Id = toInt32(1)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	_.Id,
	_.BlobValue
FROM
	BlobClass _
WHERE
	_.Id = toInt32(1)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS BlobClass

