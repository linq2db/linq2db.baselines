BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE aa
(
	bb Int32,
	cc Nullable(String),

	PRIMARY KEY (bb)
)
ENGINE = MergeTree()
ORDER BY bb

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

SELECT
	t1.bb,
	t1.cc
FROM
	aa t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE aa

