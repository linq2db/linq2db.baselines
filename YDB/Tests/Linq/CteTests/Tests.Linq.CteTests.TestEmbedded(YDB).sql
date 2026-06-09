-- YDB Ydb

$CTE_1 = 	SELECT
		c_1.ChildID as ChildID
	FROM
		Child c_1
;
$CTE_2 = 	SELECT DISTINCT
		t1.ChildID as NotIn
	FROM
		$CTE_1 t1
;
$CTE_3 = 	SELECT DISTINCT
		t2.NotIn as NotIn
	FROM
		$CTE_2 t2
;
$CTE_4 = 	SELECT DISTINCT
		t3.NotIn as NotIn
	FROM
		$CTE_3 t3
;
$CTE_5 = 	SELECT
		t4.NotIn as NotIn
	FROM
		$CTE_4 t4
;

SELECT
	w.ParentID as ParentID,
	w.ChildID as ChildID
FROM
	Child w
WHERE
	w.ChildID NOT IN (
		SELECT
			t5.NotIn
		FROM
			$CTE_5 t5
	)

