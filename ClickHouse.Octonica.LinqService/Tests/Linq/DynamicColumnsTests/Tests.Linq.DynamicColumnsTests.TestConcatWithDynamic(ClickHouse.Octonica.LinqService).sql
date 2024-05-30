BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS M998_T066

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS M998_T066
(
	F066_04 Nullable(String),
	F066_05 Nullable(String),
	F066_00 Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO M998_T066
(
	F066_04,
	F066_05,
	F066_00
)
VALUES
(
	'Desc1',
	'v1',
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO M998_T066
(
	F066_04,
	F066_05,
	F066_00
)
VALUES
(
	'Desc2',
	'v2',
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS M998_T000

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS M998_T000
(
	F066_04 Nullable(String),
	F066_05 Nullable(String),
	F066_00 Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO M998_T000
(
	F066_04,
	F066_05,
	F066_00
)
VALUES
(
	'Desc3',
	NULL,
	'v3'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO M998_T000
(
	F066_04,
	F066_05,
	F066_00
)
VALUES
(
	'Desc4',
	NULL,
	'v4'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.F066_04 as Description,
	t1.F066_05,
	t1.F066_00
FROM
	M998_T066 t1
UNION ALL
SELECT
	t2.F066_04 as Description,
	t2.F066_05 as F066_05,
	t2.F066_00 as F066_00
FROM
	M998_T000 t2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS M998_T000

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS M998_T066

