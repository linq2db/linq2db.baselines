BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Table404One

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Table404One
(
	Id Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Table404One
(
	Id
)
VALUES
(1),
(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Table404Two

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Table404Two
(
	Id           Int32,
	Usage        Int32,
	FirstTableId Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Table404Two
(
	Id,
	Usage,
	FirstTableId
)
VALUES
(1,0,1),
(2,0,1),
(3,1,1),
(4,0,2),
(5,1,2),
(6,1,2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.Usage,
	d.FirstTableId
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			Table404One t1
	) m_1
		INNER JOIN Table404Two d ON m_1.Id = d.FirstTableId

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id
FROM
	Table404One t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.Usage,
	d.FirstTableId
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			Table404One t1
	) m_1
		INNER JOIN Table404Two d ON m_1.Id = d.FirstTableId
WHERE
	d.Usage = 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id
FROM
	Table404One t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.Usage,
	d.FirstTableId
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			Table404One t1
	) m_1
		INNER JOIN Table404Two d ON m_1.Id = d.FirstTableId
WHERE
	d.Usage = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id
FROM
	Table404One t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Table404Two

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Table404One

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Table404One

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Table404One
(
	Id Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Table404One
(
	Id
)
VALUES
(1),
(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Table404Two

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Table404Two
(
	Id           Int32,
	Usage        Int32,
	FirstTableId Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Table404Two
(
	Id,
	Usage,
	FirstTableId
)
VALUES
(1,0,1),
(2,0,1),
(3,1,1),
(4,0,2),
(5,1,2),
(6,1,2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.Usage,
	d.FirstTableId
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			Table404One t1
	) m_1
		INNER JOIN Table404Two d ON m_1.Id = d.FirstTableId

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id
FROM
	Table404One t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.Usage,
	d.FirstTableId
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			Table404One t1
	) m_1
		INNER JOIN Table404Two d ON m_1.Id = d.FirstTableId
WHERE
	d.Usage = 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id
FROM
	Table404One t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.Usage,
	d.FirstTableId
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			Table404One t1
	) m_1
		INNER JOIN Table404Two d ON m_1.Id = d.FirstTableId
WHERE
	d.Usage = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id
FROM
	Table404One t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Table404Two

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Table404One

