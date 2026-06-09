-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 1

SELECT
	p.Id as Id,
	p.MyEnum as MyEnum,
	p.MyEnum2 as MyEnum2
FROM
	TestIssue358Class p
WHERE
	p.MyEnum2 NOT IN ($Ids0_1)

