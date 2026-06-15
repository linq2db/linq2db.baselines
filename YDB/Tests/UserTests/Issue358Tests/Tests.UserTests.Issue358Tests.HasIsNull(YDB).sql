-- YDB Ydb

SELECT
	p.Id as Id,
	p.MyEnum as MyEnum,
	p.MyEnum2 as MyEnum2
FROM
	TestIssue358Class p
WHERE
	p.MyEnum <> 0 OR p.MyEnum IS NULL

