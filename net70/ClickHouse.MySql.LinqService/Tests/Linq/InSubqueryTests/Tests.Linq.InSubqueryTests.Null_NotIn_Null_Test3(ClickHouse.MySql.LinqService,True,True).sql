BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS test_in_1

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS test_in_1
(
	ID Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO test_in_1
(
	ID
)
VALUES
(
	toInt32(1)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO test_in_1
(
	ID
)
VALUES
(
	toInt32(3)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO test_in_1
(
	ID
)
VALUES
(
	toInt32(4)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO test_in_1
(
	ID
)
VALUES
(
	toInt32(5)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO test_in_1
(
	ID
)
VALUES
(
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS test_in_2

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS test_in_2
(
	ID Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO test_in_2
(
	ID
)
VALUES
(
	toInt32(1)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO test_in_2
(
	ID
)
VALUES
(
	toInt32(2)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO test_in_2
(
	ID
)
VALUES
(
	toInt32(4)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO test_in_2
(
	ID
)
VALUES
(
	toInt32(6)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID
FROM
	test_in_1 t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.ID
FROM
	test_in_1 t
WHERE
	CASE
		WHEN t.ID IS NULL AND toInt32(1) IN (
			SELECT
				toInt32(1)
			FROM
				test_in_2 p
			WHERE
				p.ID IS NULL
		) OR t.ID IS NOT NULL AND t.ID IN (
			SELECT
				p.ID
			FROM
				test_in_2 p
		)
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END = false

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID
FROM
	test_in_2 t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID
FROM
	test_in_2 t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID
FROM
	test_in_2 t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID
FROM
	test_in_2 t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID
FROM
	test_in_2 t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS test_in_2

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS test_in_1

