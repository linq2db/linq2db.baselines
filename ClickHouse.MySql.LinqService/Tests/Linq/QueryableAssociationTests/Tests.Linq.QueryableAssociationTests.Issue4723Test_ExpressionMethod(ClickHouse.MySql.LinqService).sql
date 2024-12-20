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
	t2.Id,
	t1.ExpressionMethod
FROM
	Issue4723Table1 t2
		LEFT JOIN (
			SELECT
				se.Value as ExpressionMethod,
				ROW_NUMBER() OVER (PARTITION BY se.Id ORDER BY se.Id) as rn,
				se.Id as Id
			FROM
				Issue4723Table2 se
		) t1 ON t1.Id = t2.Id AND t1.rn <= 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4723Table2

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4723Table1

