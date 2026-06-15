-- YDB Ydb

$CTE_1 = 	SELECT
		x.LastName as Obj_Operator
	FROM
		Person x
;

SELECT
	t1.Obj_Operator as Operator_1
FROM
	$CTE_1 t1
LIMIT 1

-- YDB Ydb

SELECT
	person_1.LastName as LastName
FROM
	Person person_1
LIMIT 1

