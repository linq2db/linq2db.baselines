BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue4160Person

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Issue4160Person
(
	Code Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue4160Person
(
	Code
)
VALUES
(
	'SD'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue4160Person
(
	Code
)
VALUES
(
	'SD'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue4160Person
(
	Code
)
VALUES
(
	'SH'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue4160City

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Issue4160City
(
	Code Nullable(String),
	Name Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT DISTINCT
	cc_1.Value_1
FROM
	Issue4160Person t1
		LEFT JOIN (
			SELECT
				cc.Name as Value_1,
				ROW_NUMBER() OVER (PARTITION BY cc.Code ORDER BY cc.Code) as rn,
				cc.Code as Code
			FROM
				Issue4160City cc
		) cc_1 ON (cc_1.Code = t1.Code AND cc_1.Code IS NOT NULL AND t1.Code IS NOT NULL OR cc_1.Code IS NULL AND t1.Code IS NULL) AND cc_1.rn <= 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue4160City

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue4160Person

