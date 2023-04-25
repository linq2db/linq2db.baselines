BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Left

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Left
(
	LeftId   Int32,
	LeftData Nullable(String),

	PRIMARY KEY (LeftId)
)
ENGINE = MergeTree()
ORDER BY LeftId

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Left
(
	LeftId,
	LeftData
)
VALUES
(toInt32(1),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Right

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Right
(
	RightId   String,
	RightData Nullable(String),

	PRIMARY KEY (RightId)
)
ENGINE = MergeTree()
ORDER BY RightId

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Right
(
	RightId,
	RightData
)
VALUES
('\x02',NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS LeftRight

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS LeftRight
(
	LeftId  Int32,
	RightId String,

	PRIMARY KEY (LeftId, RightId)
)
ENGINE = MergeTree()
ORDER BY (LeftId, RightId)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO LeftRight
(
	LeftId,
	RightId
)
VALUES
(toInt32(1),'\x02')

BeforeExecute
-- ClickHouse.Client ClickHouse

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
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	lw_Left.LeftId,
	detail.LeftId,
	detail.RightId
FROM
	(
		SELECT DISTINCT
			t2.LeftId as LeftId
		FROM
			(
				SELECT
					t1.LeftId as LeftId
				FROM
					Left t1
				LIMIT toInt32(1)
			) t2
	) lw_Left
		INNER JOIN LeftRight detail ON lw_Left.LeftId = detail.LeftId

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.LeftId,
	t1.LeftData
FROM
	Left t1
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	lw_Right.RightId,
	detail.LeftId,
	detail.RightId
FROM
	(
		SELECT DISTINCT
			t2.RightId as RightId
		FROM
			(
				SELECT
					t1.RightId as RightId
				FROM
					Right t1
				LIMIT toInt32(1)
			) t2
	) lw_Right
		INNER JOIN LeftRight detail ON lw_Right.RightId = detail.RightId

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.RightId,
	t1.RightData
FROM
	Right t1
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS LeftRight

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Right

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Left

