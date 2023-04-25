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
(toInt32(1),'Some1'),
(toInt32(2),'Some2')

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
(toInt32(11),toInt32(1),'Child11'),
(toInt32(12),toInt32(1),'Child12'),
(toInt32(13),toInt32(2),'Child13')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID1,
	detail.NAME2,
	detail.ID2
FROM
	TABLE1 t1
		INNER JOIN TABLE2 detail ON detail.PARENTID2 = t1.ID1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.NAME1,
	t1.ID1
FROM
	TABLE1 t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TABLE2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TABLE1

