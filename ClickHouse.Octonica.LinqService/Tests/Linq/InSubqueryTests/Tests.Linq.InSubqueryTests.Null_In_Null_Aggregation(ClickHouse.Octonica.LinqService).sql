﻿BeforeExecute
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
(
	1
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO test_in_1
(
	ID
)
VALUES
(
	3
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS test_in_2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS test_in_2
(
	ID Nullable(Int32),
	GV Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO test_in_2
(
	ID,
	GV
)
VALUES
(
	1,
	1
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO test_in_2
(
	ID,
	GV
)
VALUES
(
	2,
	0
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO test_in_2
(
	ID,
	GV
)
VALUES
(
	NULL,
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.ID
FROM
	test_in_1 t
WHERE
	(t.ID IS NULL AND 1 IN (
		SELECT
			1
		FROM
			(
				SELECT
					minOrNull(g_1.ID) as MIN_1
				FROM
					test_in_2 g_1
				GROUP BY
					g_1.GV
			) t1
		WHERE
			t1.MIN_1 IS NULL
	) OR t.ID IS NOT NULL AND t.ID IN (
		SELECT
			t2.MIN_1
		FROM
			(
				SELECT
					minOrNull(g_2.ID) as MIN_1
				FROM
					test_in_2 g_2
				GROUP BY
					g_2.GV
			) t2
	))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID
FROM
	test_in_1 t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID,
	t1.GV
FROM
	test_in_2 t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS test_in_2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS test_in_1

