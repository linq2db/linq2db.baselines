BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS DistinctOrderByTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS DistinctOrderByTable
(
	Id Int32,
	F1 Int32,
	F2 Nullable(String),
	F3 Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO DistinctOrderByTable
(
	Id,
	F1,
	F2,
	F3
)
VALUES
(
	8,
	8,
	'8',
	5
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO DistinctOrderByTable
(
	Id,
	F1,
	F2,
	F3
)
VALUES
(
	3,
	3,
	'3',
	3
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO DistinctOrderByTable
(
	Id,
	F1,
	F2,
	F3
)
VALUES
(
	2,
	2,
	'2',
	1
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO DistinctOrderByTable
(
	Id,
	F1,
	F2,
	F3
)
VALUES
(
	6,
	3,
	'3',
	4
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO DistinctOrderByTable
(
	Id,
	F1,
	F2,
	F3
)
VALUES
(
	1,
	3,
	'3',
	7
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO DistinctOrderByTable
(
	Id,
	F1,
	F2,
	F3
)
VALUES
(
	5,
	5,
	'5',
	2
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO DistinctOrderByTable
(
	Id,
	F1,
	F2,
	F3
)
VALUES
(
	7,
	2,
	'2',
	8
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO DistinctOrderByTable
(
	Id,
	F1,
	F2,
	F3
)
VALUES
(
	4,
	4,
	'4',
	6
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT DISTINCT
	r.F1,
	r.F2
FROM
	DistinctOrderByTable r
ORDER BY
	r.F1 DESC

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS DistinctOrderByTable

