BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue1303

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue1303
(
	ID     Int32,
	Array  Nullable(String),
	Binary Nullable(String),

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue1303
(
	ID,
	Array,
	Binary
)
VALUES
(
	toInt32(1),
	'\x01\x02\x03',
	'\x04\x05'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	_.ID,
	_.Array,
	_.Binary
FROM
	Issue1303 _
WHERE
	_.ID = toInt32(1)
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	_.ID,
	_.Array,
	_.Binary
FROM
	Issue1303 _
WHERE
	_.Array = '\x01\x02\x03'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	_.ID,
	_.Array,
	_.Binary
FROM
	Issue1303 _
WHERE
	_.Binary = '\x04\x05'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue1303

