BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	p.MyEnum,
	p.MyEnum2
FROM
	TestIssue358Class p
WHERE
	p.MyEnum <> 0 OR p.MyEnum IS NULL

