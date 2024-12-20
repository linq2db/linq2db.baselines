BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TestIssue358Class

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS TestIssue358Class
(
	MyEnum  Nullable(Int32),
	MyEnum2 Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.MyEnum,
	p.MyEnum2
FROM
	TestIssue358Class p
WHERE
	p.MyEnum <> 0 OR p.MyEnum IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TestIssue358Class

