BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4723Table1

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue4723Table1
(
	Id               Int32,
	ExpressionMethod Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4723Table1
(
	Id,
	ExpressionMethod
)
VALUES
(
	1,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4723Table2

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue4723Table2
(
	Id    Int32,
	Value Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4723Table2
(
	Id,
	Value
)
VALUES
(
	1,
	'Value 1'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4723Table2
(
	Id,
	Value
)
VALUES
(
	1,
	'Value 1'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4723Table2
(
	Id,
	Value
)
VALUES
(
	2,
	'Value 2'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	t1.Association
FROM
	Issue4723Table1 x
		LEFT JOIN (
			SELECT
				a_Association.Value as Association,
				ROW_NUMBER() OVER (PARTITION BY a_Association.Id ORDER BY a_Association.Id) as rn,
				a_Association.Id as Id
			FROM
				Issue4723Table2 a_Association
		) t1 ON t1.Id = x.Id AND t1.rn <= 1
WHERE
	t1.Association IS NOT NULL AND (t1.Association <> 'unknown' OR t1.Association IS NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4723Table2

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4723Table1

