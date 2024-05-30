BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS test_in_1

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS test_in_1
(
	ID Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO test_in_1
(
	ID
)
VALUES
(
	1
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO test_in_1
(
	ID
)
VALUES
(
	3
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO test_in_1
(
	ID
)
VALUES
(
	4
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO test_in_1
(
	ID
)
VALUES
(
	5
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO test_in_1
(
	ID
)
VALUES
(
	NULL
)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS test_in_2

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS test_in_2
(
	ID Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO test_in_2
(
	ID
)
VALUES
(
	1
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO test_in_2
(
	ID
)
VALUES
(
	2
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO test_in_2
(
	ID
)
VALUES
(
	4
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO test_in_2
(
	ID
)
VALUES
(
	6
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.ID
FROM
	test_in_1 t
WHERE
	NOT (t.ID IS NULL AND 1 IN (
		SELECT
			1
		FROM
			test_in_2 p
		WHERE
			p.ID IS NULL
	) OR t.ID IS NOT NULL AND t.ID IN (
		SELECT
			p_1.ID
		FROM
			test_in_2 p_1
	))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ID
FROM
	test_in_1 t1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ID
FROM
	test_in_2 t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS test_in_2

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS test_in_1

