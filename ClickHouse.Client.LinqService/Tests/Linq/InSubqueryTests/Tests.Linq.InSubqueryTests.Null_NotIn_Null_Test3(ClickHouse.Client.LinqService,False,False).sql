﻿BeforeExecute
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
	toInt32(1)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO test_in_1
(
	ID
)
VALUES
(
	toInt32(3)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO test_in_1
(
	ID
)
VALUES
(
	toInt32(4)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO test_in_1
(
	ID
)
VALUES
(
	toInt32(5)
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
	toInt32(1)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO test_in_2
(
	ID
)
VALUES
(
	toInt32(2)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO test_in_2
(
	ID
)
VALUES
(
	toInt32(4)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO test_in_2
(
	ID
)
VALUES
(
	toInt32(6)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ID
FROM
	test_in_1 t1

BeforeExecute
-- ClickHouse.Client ClickHouse

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

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS test_in_2

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS test_in_1

