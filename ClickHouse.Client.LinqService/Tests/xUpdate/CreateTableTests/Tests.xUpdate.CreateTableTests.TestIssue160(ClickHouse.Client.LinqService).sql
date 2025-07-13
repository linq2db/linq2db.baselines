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
	bb,
	cc
)
VALUES
(
	99,
	'hallo'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.bb,
	t1.cc
FROM
	aa t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE aa

