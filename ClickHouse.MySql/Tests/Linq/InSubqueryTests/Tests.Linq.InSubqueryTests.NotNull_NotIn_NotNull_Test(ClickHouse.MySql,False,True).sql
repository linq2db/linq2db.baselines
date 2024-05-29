BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS test_in_1

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS test_in_1
(
	ID Int32
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
(3)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS test_in_2

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS test_in_2
(
	ID Int32
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
	t.ID NOT IN (
		SELECT
			p.ID
		FROM
			test_in_2 p
	)
ORDER BY
	t.ID

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

