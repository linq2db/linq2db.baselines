BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4160Person

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue4160Person
(
	Code Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4160Person
(
	Code
)
VALUES
('SD'),
('SD'),
('SH')

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4160City

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue4160City
(
	Code Nullable(String),
	Name Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4160City
(
	Code,
	Name
)
VALUES
('SD','SYDNEY'),
('SD','SUNDAY'),
('SH','SYDHIP')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT DISTINCT
	t1.Value_1
FROM
	Issue4160Person pe
		LEFT JOIN (
			SELECT
				cc.Name as Value_1,
				ROW_NUMBER() OVER (PARTITION BY cc.Code ORDER BY cc.Code) as rn,
				cc.Code as Code
			FROM
				Issue4160City cc
		) t1 ON (t1.Code = pe.Code OR t1.Code IS NULL AND pe.Code IS NULL) AND t1.rn <= 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4160City

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4160Person

