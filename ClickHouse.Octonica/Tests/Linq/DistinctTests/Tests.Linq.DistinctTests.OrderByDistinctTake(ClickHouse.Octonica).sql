BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DistinctOrderByTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

INSERT INTO DistinctOrderByTable
(
	Id,
	F1,
	F2,
	F3
)
VALUES
(8,8,'8',5),
(3,3,'3',3),
(2,2,'2',1),
(6,3,'3',4),
(1,3,'3',7),
(5,5,'5',2),
(7,2,'2',8),
(4,4,'4',6)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t2.F2
FROM
	(
		SELECT DISTINCT
			t1.F1 as F1,
			t1.F2 as F2
		FROM
			DistinctOrderByTable t1
	) t2
ORDER BY
	t2.F1
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DistinctOrderByTable

