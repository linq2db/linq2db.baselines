-- YDB Ydb
UPDATE
	InheritanceFilter
SET
	Code = InheritanceFilter.Code,
	Child1Field = 99
WHERE
	InheritanceFilter.Id = 1

-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 12
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 11
DECLARE $Ids0_3 Int32
SET     $Ids0_3 = 1

SELECT
	c_1.Id as Id,
	c_1.Code as Code,
	c_1.Child1Field as Child1Field
FROM
	InheritanceFilter c_1
WHERE
	c_1.Code IN ($Ids0_1, $Ids0_2, $Ids0_3) AND c_1.Id = 1
LIMIT 2

