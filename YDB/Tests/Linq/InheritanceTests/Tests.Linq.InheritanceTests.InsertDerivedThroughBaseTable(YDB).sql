-- YDB Ydb
INSERT INTO InheritanceFilter
(
	Id,
	Code,
	Child1Field
)
VALUES
(
	1,
	1,
	11
)

-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 12
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 11
DECLARE $Ids0_3 Int32
SET     $Ids0_3 = 1

SELECT
	t1.Id as Id,
	t1.Code as Code,
	t1.Child1Field as Child1Field
FROM
	InheritanceFilter t1
WHERE
	t1.Code IN ($Ids0_1, $Ids0_2, $Ids0_3)
LIMIT 2

