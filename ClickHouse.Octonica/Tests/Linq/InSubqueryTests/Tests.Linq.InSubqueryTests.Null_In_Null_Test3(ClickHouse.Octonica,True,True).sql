BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS test_in_1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS test_in_1
(
	ID Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO test_in_1
(
	ID
)
VALUES
(toInt32(1)),
(toInt32(3))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS test_in_2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS test_in_2
(
	ID Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO test_in_2
(
	ID
)
VALUES
(toInt32(1)),
(toInt32(2)),
(NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID
FROM
	test_in_1 t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.ID
FROM
	test_in_1 t
WHERE
	(t.ID IS NULL AND toInt32(1) IN (
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
	))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID
FROM
	test_in_2 t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID
FROM
	test_in_2 t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS test_in_2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS test_in_1

