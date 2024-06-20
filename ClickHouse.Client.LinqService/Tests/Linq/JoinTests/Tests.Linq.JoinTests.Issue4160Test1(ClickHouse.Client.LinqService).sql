﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4160Person

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue4160Person
(
	Code Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue4160Person
(
	Code
)
VALUES
(
	'SD'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue4160Person
(
	Code
)
VALUES
(
	'SD'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue4160Person
(
	Code
)
VALUES
(
	'SH'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4160City

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue4160City
(
	Code Nullable(String),
	Name Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue4160City
(
	Code,
	Name
)
VALUES
(
	'SD',
	'SYDNEY'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue4160City
(
	Code,
	Name
)
VALUES
(
	'SD',
	'SUNDAY'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue4160City
(
	Code,
	Name
)
VALUES
(
	'SH',
	'SYDHIP'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT DISTINCT
	t1.Name
FROM
	Issue4160Person pe
		LEFT JOIN (
			SELECT
				cc.Name as Name,
				ROW_NUMBER() OVER (PARTITION BY cc.Code ORDER BY cc.Code) as rn,
				cc.Code as Code
			FROM
				Issue4160City cc
		) t1 ON (t1.Code = pe.Code OR t1.Code IS NULL AND pe.Code IS NULL) AND t1.rn <= 1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4160City

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4160Person

