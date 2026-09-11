-- YDB Ydb
UPDATE
	InheritanceFilter
SET
	Code = InheritanceFilter.Code,
	Child2Field = 88
WHERE
	InheritanceFilter.Id = 2

-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 22
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 21
DECLARE $Ids0_3 Int32
SET     $Ids0_3 = 2

SELECT
	c_1.Id as Id,
	c_1.Code as Code,
	c_1.Child2Field as Child2Field
FROM
	InheritanceFilter c_1
WHERE
	c_1.Code IN ($Ids0_1, $Ids0_2, $Ids0_3) AND c_1.Id = 2
LIMIT 2

