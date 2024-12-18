BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue2546Class

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue2546Class
(
	Id    Int32,
	Value Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue2546Class
(
	Id,
	Value
)
VALUES
(1,'Hello World')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	x.Value
FROM
	Issue2546Class x
WHERE
	x.Value = 'Hello World' AND x.Value IS NOT NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue2546Class

