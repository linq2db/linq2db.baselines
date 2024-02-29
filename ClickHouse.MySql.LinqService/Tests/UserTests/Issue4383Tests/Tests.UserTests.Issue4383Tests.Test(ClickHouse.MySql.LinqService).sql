BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS PUMPLINES

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS PUMPLINES
(
	LINE_ID Int32,

	PRIMARY KEY (LINE_ID)
)
ENGINE = MergeTree()
ORDER BY LINE_ID

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO PUMPLINES
(
	LINE_ID
)
VALUES
(
	toInt32(1)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO PUMPLINES
(
	LINE_ID
)
VALUES
(
	toInt32(2)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS PUMPLINE_CHAINS

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS PUMPLINE_CHAINS
(
	LINE_ID  Int32,
	CHAIN_ID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO PUMPLINE_CHAINS
(
	LINE_ID,
	CHAIN_ID
)
VALUES
(
	toInt32(1),
	toInt32(11)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO PUMPLINE_CHAINS
(
	LINE_ID,
	CHAIN_ID
)
VALUES
(
	toInt32(2),
	toInt32(22)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CHAINS

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS CHAINS
(
	CHAIN_ID Int32,

	PRIMARY KEY (CHAIN_ID)
)
ENGINE = MergeTree()
ORDER BY CHAIN_ID

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO CHAINS
(
	CHAIN_ID
)
VALUES
(
	toInt32(11)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO CHAINS
(
	CHAIN_ID
)
VALUES
(
	toInt32(22)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CHAINPOINTS

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS CHAINPOINTS
(
	CHAIN_ID Int32,

	PRIMARY KEY (CHAIN_ID)
)
ENGINE = MergeTree()
ORDER BY CHAIN_ID

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO CHAINPOINTS
(
	CHAIN_ID
)
VALUES
(
	toInt32(11)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO CHAINPOINTS
(
	CHAIN_ID
)
VALUES
(
	toInt32(22)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	key_data_result.CHAIN_ID,
	key_data_result.LINE_ID,
	detail_1.CHAIN_ID
FROM
	(
		SELECT DISTINCT
			a_Chain.CHAIN_ID as CHAIN_ID,
			`lw_PumpLineTest``2`.LINE_ID as LINE_ID
		FROM
			PUMPLINES `lw_PumpLineTest``2`
				INNER JOIN PUMPLINE_CHAINS detail ON `lw_PumpLineTest``2`.LINE_ID = detail.LINE_ID
				LEFT JOIN CHAINS a_Chain ON detail.CHAIN_ID = a_Chain.CHAIN_ID
	) key_data_result
		INNER JOIN CHAINPOINTS detail_1 ON key_data_result.CHAIN_ID = detail_1.CHAIN_ID

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	`lw_PumpLineTest``2`.LINE_ID,
	detail.LINE_ID,
	detail.CHAIN_ID,
	a_Chain.CHAIN_ID
FROM
	PUMPLINES `lw_PumpLineTest``2`
		INNER JOIN PUMPLINE_CHAINS detail ON `lw_PumpLineTest``2`.LINE_ID = detail.LINE_ID
		LEFT JOIN CHAINS a_Chain ON detail.CHAIN_ID = a_Chain.CHAIN_ID

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.LINE_ID
FROM
	PUMPLINES t1
ORDER BY
	t1.LINE_ID

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CHAINPOINTS

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CHAINS

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS PUMPLINE_CHAINS

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS PUMPLINES

