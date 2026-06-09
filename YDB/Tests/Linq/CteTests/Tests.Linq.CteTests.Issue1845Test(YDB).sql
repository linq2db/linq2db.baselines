-- YDB Ydb

$CTE_1 = 	SELECT
		o.FirstName as Value1,
		o.LastName as Value2
	FROM
		Person o
;
$CTE_2 = 	SELECT
		t1.Value1 as Value1,
		t1.Value2 as Value2
	FROM
		$CTE_1 t1
	UNION
	SELECT
		t2.Value1 as Value1,
		t2.Value2 as Value2
	FROM
		(VALUES
			('Somebody'u,'Unimportant'u)
		) t2(Value1, Value2)
;

SELECT
	t3.Value1 as Value1,
	t3.Value2 as Value2
FROM
	$CTE_2 t3

