BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS PUMPLINES

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS PUMPLINES
(
	LINE_ID Int32,

	PRIMARY KEY (LINE_ID)
)
ENGINE = MergeTree()
ORDER BY LINE_ID

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO PUMPLINES
(
	LINE_ID
)
VALUES
(
	1
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO PUMPLINES
(
	LINE_ID
)
VALUES
(
	2
)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS PUMPLINE_CHAINS

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS PUMPLINE_CHAINS
(
	LINE_ID  Int32,
	CHAIN_ID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO PUMPLINE_CHAINS
(
	LINE_ID,
	CHAIN_ID
)
VALUES
(
	1,
	11
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO PUMPLINE_CHAINS
(
	LINE_ID,
	CHAIN_ID
)
VALUES
(
	2,
	22
)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS CHAINS

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS CHAINS
(
	CHAIN_ID Int32,

	PRIMARY KEY (CHAIN_ID)
)
ENGINE = MergeTree()
ORDER BY CHAIN_ID

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO CHAINS
(
	CHAIN_ID
)
VALUES
(
	11
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO CHAINS
(
	CHAIN_ID
)
VALUES
(
	22
)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS CHAINPOINTS

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS CHAINPOINTS
(
	CHAIN_ID Int32,

	PRIMARY KEY (CHAIN_ID)
)
ENGINE = MergeTree()
ORDER BY CHAIN_ID

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO CHAINPOINTS
(
	CHAIN_ID
)
VALUES
(
	11
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO CHAINPOINTS
(
	CHAIN_ID
)
VALUES
(
	22
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.Id,
	m_1.Id_1,
	d_1.CHAIN_ID
FROM
	(
		SELECT DISTINCT
			a_Chain.CHAIN_ID as Id,
			t2.Id as Id_1
		FROM
			(
				SELECT DISTINCT
					t1.LINE_ID as Id
				FROM
					PUMPLINES t1
			) t2
				INNER JOIN PUMPLINE_CHAINS d ON t2.Id = d.LINE_ID
				LEFT JOIN CHAINS a_Chain ON d.CHAIN_ID = a_Chain.CHAIN_ID
	) m_1
		INNER JOIN CHAINPOINTS d_1 ON m_1.Id = d_1.CHAIN_ID

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.LINE_ID,
	d.LINE_ID,
	d.CHAIN_ID,
	a_Chain.CHAIN_ID,
	a_Chain.CHAIN_ID
FROM
	PUMPLINES m_1
		INNER JOIN PUMPLINE_CHAINS d ON m_1.LINE_ID = d.LINE_ID
		LEFT JOIN CHAINS a_Chain ON d.CHAIN_ID = a_Chain.CHAIN_ID
ORDER BY
	m_1.LINE_ID

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.LINE_ID,
	t1.LINE_ID
FROM
	PUMPLINES t1
ORDER BY
	t1.LINE_ID

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS CHAINPOINTS

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS CHAINS

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS PUMPLINE_CHAINS

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS PUMPLINES

