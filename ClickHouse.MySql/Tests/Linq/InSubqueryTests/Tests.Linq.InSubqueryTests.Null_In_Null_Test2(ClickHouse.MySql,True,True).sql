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
(1),
(3),
(NULL)

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
(1),
(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.ID
FROM
	test_in_1 t
WHERE
	(t.ID IS NULL AND 1 IN (
		SELECT
			1
		FROM
			test_in_2 p
		WHERE
			p.ID IS NULL
	) OR t.ID IS NOT NULL AND t.ID IN (
		SELECT
			p.ID
		FROM
			test_in_2 p
	))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID
FROM
	test_in_1 t1

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

