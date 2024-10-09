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
(1,'Some1'),
(2,'Some2')

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
(11,1,'Child11'),
(12,1,'Child12'),
(13,2,'Child13')

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
(21,11,'Child21'),
(22,11,'Child22'),
(23,12,'Child23')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t2.not_null,
	t2.Id3,
	t2.Name3,
	t2.Name2,
	t1_1.NAME1
FROM
	TABLE1 t1_1
		LEFT JOIN (
			SELECT
				t1.Id3 as Id3,
				t1.Name3 as Name3,
				1 as not_null,
				x_1.NAME2 as Name2,
				ROW_NUMBER() OVER (PARTITION BY x_1.PARENTID2 ORDER BY x_1.PARENTID2) as rn,
				x_1.PARENTID2 as PARENTID2
			FROM
				TABLE2 x_1
					LEFT JOIN (
						SELECT
							x.ID3 as Id3,
							x.NAME3 as Name3,
							ROW_NUMBER() OVER (PARTITION BY x.PARENTID3 ORDER BY x.PARENTID3) as rn,
							x.PARENTID3 as PARENTID3
						FROM
							TABLE3 x
					) t1 ON t1.PARENTID3 = x_1.ID2 AND t1.rn <= 1
		) t2 ON t2.PARENTID2 = t1_1.ID1 AND t2.rn <= 1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TABLE3

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TABLE2

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TABLE1

