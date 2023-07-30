BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Table404One

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Table404One
(
	Id Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Table404One
(
	Id
)
VALUES
(toInt32(1)),
(toInt32(2))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Table404Two

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Table404Two
(
	Id           Int32,
	Usage        Int32,
	FirstTableId Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Table404Two
(
	Id,
	Usage,
	FirstTableId
)
VALUES
(toInt32(1),toInt32(0),toInt32(1)),
(toInt32(2),toInt32(0),toInt32(1)),
(toInt32(3),toInt32(1),toInt32(1)),
(toInt32(4),toInt32(0),toInt32(2)),
(toInt32(5),toInt32(1),toInt32(2)),
(toInt32(6),toInt32(1),toInt32(2))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	key_data_result.Id,
	_v.Id,
	_v.Usage,
	_v.FirstTableId
FROM
	(
		SELECT DISTINCT
			c_1.Id as Id
		FROM
			Table404One c_1
	) key_data_result
		INNER JOIN Table404Two _v ON _v.FirstTableId = key_data_result.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	c_1.Id
FROM
	Table404One c_1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	key_data_result.Id,
	_v.Id,
	_v.Usage,
	_v.FirstTableId
FROM
	(
		SELECT DISTINCT
			c_1.Id as Id
		FROM
			Table404One c_1
	) key_data_result
		INNER JOIN Table404Two _v ON _v.Usage = toInt32(0) AND _v.FirstTableId = key_data_result.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	c_1.Id
FROM
	Table404One c_1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	key_data_result.Id,
	_v.Id,
	_v.Usage,
	_v.FirstTableId
FROM
	(
		SELECT DISTINCT
			c_1.Id as Id
		FROM
			Table404One c_1
	) key_data_result
		INNER JOIN Table404Two _v ON _v.Usage = toInt32(1) AND _v.FirstTableId = key_data_result.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	c_1.Id
FROM
	Table404One c_1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Table404Two

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Table404One

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Table404One

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Table404One
(
	Id Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Table404One
(
	Id
)
VALUES
(toInt32(1)),
(toInt32(2))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Table404Two

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Table404Two
(
	Id           Int32,
	Usage        Int32,
	FirstTableId Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Table404Two
(
	Id,
	Usage,
	FirstTableId
)
VALUES
(toInt32(1),toInt32(0),toInt32(1)),
(toInt32(2),toInt32(0),toInt32(1)),
(toInt32(3),toInt32(1),toInt32(1)),
(toInt32(4),toInt32(0),toInt32(2)),
(toInt32(5),toInt32(1),toInt32(2)),
(toInt32(6),toInt32(1),toInt32(2))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	key_data_result.Id,
	_v.Id,
	_v.Usage,
	_v.FirstTableId
FROM
	(
		SELECT DISTINCT
			c_1.Id as Id
		FROM
			Table404One c_1
	) key_data_result
		INNER JOIN Table404Two _v ON _v.FirstTableId = key_data_result.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	c_1.Id
FROM
	Table404One c_1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	key_data_result.Id,
	_v.Id,
	_v.Usage,
	_v.FirstTableId
FROM
	(
		SELECT DISTINCT
			c_1.Id as Id
		FROM
			Table404One c_1
	) key_data_result
		INNER JOIN Table404Two _v ON _v.Usage = toInt32(0) AND _v.FirstTableId = key_data_result.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	c_1.Id
FROM
	Table404One c_1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	key_data_result.Id,
	_v.Id,
	_v.Usage,
	_v.FirstTableId
FROM
	(
		SELECT DISTINCT
			c_1.Id as Id
		FROM
			Table404One c_1
	) key_data_result
		INNER JOIN Table404Two _v ON _v.Usage = toInt32(1) AND _v.FirstTableId = key_data_result.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	c_1.Id
FROM
	Table404One c_1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Table404Two

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Table404One

