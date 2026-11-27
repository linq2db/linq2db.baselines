-- YDB Ydb
SELECT
	p.Id as Id,
	p.MyEnum as MyEnum,
	p.MyEnum2 as MyEnum2
FROM
	EnumFilterEntity p
WHERE
	p.MyEnum2 <> 0

