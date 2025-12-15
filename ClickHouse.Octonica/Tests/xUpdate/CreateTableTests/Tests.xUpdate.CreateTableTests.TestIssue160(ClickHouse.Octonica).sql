-- ClickHouse.Octonica ClickHouse

CREATE TABLE aa
(
	bb Int32,
	cc Nullable(String),

	PRIMARY KEY (bb)
)
ENGINE = MergeTree()
ORDER BY bb

-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.bb,
	t1.cc
FROM
	aa t1

-- ClickHouse.Octonica ClickHouse

DROP TABLE aa

