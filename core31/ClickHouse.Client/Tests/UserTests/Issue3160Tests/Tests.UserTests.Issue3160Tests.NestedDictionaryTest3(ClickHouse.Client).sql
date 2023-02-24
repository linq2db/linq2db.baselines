BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TABLE1

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS TABLE1
(
	ID1   Int32,
	NAME1 Nullable(String),

	 PRIMARY KEY (ID1)
)
ENGINE = MergeTree()
ORDER BY ID1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TABLE1
(
	ID1,
	NAME1
)
VALUES
(toInt32(1),'Some1'),
(toInt32(2),'Some2')

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TABLE2

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TABLE3

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS TABLE3
(
	ID3       Int32,
	PARENTID3 Int32,
	NAME3     Nullable(String),

	 PRIMARY KEY (ID3)
)
ENGINE = MergeTree()
ORDER BY ID3

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TABLE3
(
	ID3,
	PARENTID3,
	NAME3
)
VALUES
(toInt32(21),toInt32(11),'Child21'),
(toInt32(22),toInt32(11),'Child22'),
(toInt32(23),toInt32(12),'Child23')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	key_data_result.ID2,
	key_data_result.ID1,
	detail_1.ID3
FROM
	(
		SELECT DISTINCT
			detail.ID2 as ID2,
			t1.ID1 as ID1
		FROM
			TABLE1 t1
				INNER JOIN TABLE2 detail ON detail.PARENTID2 = t1.ID1
	) key_data_result
		INNER JOIN TABLE3 detail_1 ON detail_1.PARENTID3 = key_data_result.ID2

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ID1,
	detail.ID2
FROM
	TABLE1 t1
		INNER JOIN TABLE2 detail ON detail.PARENTID2 = t1.ID1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ID1
FROM
	TABLE1 t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TABLE3

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TABLE2

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TABLE1

