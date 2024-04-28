BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Left

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Left
(
	LeftId   Int32,
	LeftData Nullable(String),

	PRIMARY KEY (LeftId)
)
ENGINE = MergeTree()
ORDER BY LeftId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Left
(
	LeftId,
	LeftData
)
VALUES
(1,NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Right

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Right
(
	RightId   String,
	RightData Nullable(String),

	PRIMARY KEY (RightId)
)
ENGINE = MergeTree()
ORDER BY RightId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Right
(
	RightId,
	RightData
)
VALUES
('\x02',NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS LeftRight

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS LeftRight
(
	LeftId  Int32,
	RightId String,

	PRIMARY KEY (LeftId, RightId)
)
ENGINE = MergeTree()
ORDER BY (LeftId, RightId)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO LeftRight
(
	LeftId,
	RightId
)
VALUES
(1,'\x02')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.LeftId,
	t1.RightId,
	a_Left.LeftId,
	a_Left.LeftData,
	a_Right.RightId,
	a_Right.RightData
FROM
	LeftRight t1
		LEFT JOIN Left a_Left ON t1.LeftId = a_Left.LeftId
		LEFT JOIN Right a_Right ON t1.RightId = a_Right.RightId
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.LeftId,
	d.LeftId,
	d.RightId
FROM
	(
		SELECT
			t1.LeftId as LeftId
		FROM
			Left t1
		LIMIT 1
	) m_1
		INNER JOIN LeftRight d ON m_1.LeftId = d.LeftId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.LeftId,
	t1.LeftData
FROM
	Left t1
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.RightId,
	d.LeftId,
	d.RightId
FROM
	(
		SELECT
			t1.RightId as RightId
		FROM
			Right t1
		LIMIT 1
	) m_1
		INNER JOIN LeftRight d ON m_1.RightId = d.RightId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.RightId,
	t1.RightData
FROM
	Right t1
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS LeftRight

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Right

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Left

