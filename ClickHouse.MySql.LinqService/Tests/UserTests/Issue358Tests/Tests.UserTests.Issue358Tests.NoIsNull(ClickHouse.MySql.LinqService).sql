BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	p.Id,
	p.MyEnum,
	p.MyEnum2
FROM
	TestIssue358Class p
WHERE
	p.MyEnum2 <> 0

