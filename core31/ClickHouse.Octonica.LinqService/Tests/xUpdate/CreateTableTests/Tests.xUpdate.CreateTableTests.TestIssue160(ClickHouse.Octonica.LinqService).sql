BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE aa
(
	bb Int32,
	cc Nullable(String),

	 PRIMARY KEY (bb)
)
ENGINE = MergeTree()
ORDER BY bb

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.cc,
	t1.bb
FROM
	aa t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE aa

