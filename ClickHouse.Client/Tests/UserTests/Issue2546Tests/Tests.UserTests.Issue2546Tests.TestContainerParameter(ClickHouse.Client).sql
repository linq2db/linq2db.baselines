BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue2546Class

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue2546Class
(
	Id    Int32,
	Value Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue2546Class
(
	Id,
	Value
)
VALUES
(1,'Hello World')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Id,
	x.Value
FROM
	Issue2546Class x
WHERE
	x.Value = 'Hello World' AND x.Value IS NOT NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue2546Class

