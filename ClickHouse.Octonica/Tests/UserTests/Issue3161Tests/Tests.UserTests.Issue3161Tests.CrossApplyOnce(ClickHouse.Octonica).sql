BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TABLE1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS TABLE1
(
	ID1   Int32,
	NAME1 Nullable(String),

	PRIMARY KEY (ID1)
)
ENGINE = MergeTree()
ORDER BY ID1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO TABLE1
(
	ID1,
	NAME1
)
VALUES
(1,'Some1'),
(2,'Some2')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TABLE2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS TABLE2
(
	ID2       Int32,
	PARENTID2 Int32,
	NAME2     Nullable(String),

	PRIMARY KEY (ID2)
)
ENGINE = MergeTree()
ORDER BY ID2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO TABLE2
(
	ID2,
	PARENTID2,
	NAME2
)
VALUES
(11,1,'Child11'),
(12,1,'Child12'),
(13,2,'Child13')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1_1.NAME1,
	t1.Value2,
	t1.Name2
FROM
	TABLE1 t1_1
		LEFT JOIN (
			SELECT
				x.NAME2 as Name2,
				x.ID2 as Value2,
				ROW_NUMBER() OVER (PARTITION BY x.PARENTID2 ORDER BY x.PARENTID2) as rn,
				x.PARENTID2 as PARENTID2
			FROM
				TABLE2 x
		) t1 ON t1.PARENTID2 = t1_1.ID1 AND t1.rn <= 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TABLE2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TABLE1

