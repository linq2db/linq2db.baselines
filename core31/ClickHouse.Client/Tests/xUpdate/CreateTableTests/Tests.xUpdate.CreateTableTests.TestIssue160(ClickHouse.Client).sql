BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE aa
(
	bb Int32,
	cc Nullable(String),

	 PRIMARY KEY (bb)
)
ENGINE = MergeTree()
ORDER BY bb

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO aa
(
	cc,
	bb
)
VALUES
(
	'hallo',
	toInt32(99)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.cc,
	t1.bb
FROM
	aa t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE aa

