-- YDB Ydb
$CTE_1 = 	SELECT
		c_1.ChildID as ChildID
	FROM
		Child c_1
	WHERE
		c_1.ChildID < 40
;

SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			t1.ChildID as ChildID
		FROM
			$CTE_1 t1
		UNION ALL
		SELECT
			t2.ChildID as ChildID
		FROM
			$CTE_1 t2
	) t3

-- YDB Ydb
$CTE_1 = 	SELECT
		c_1.ChildID as ChildID
	FROM
		Child c_1
	WHERE
		c_1.ChildID < 40
;
$CTE_2 = 	SELECT
		c_2.ChildID as ChildID
	FROM
		Child c_2
	WHERE
		c_2.ChildID < 30
;

SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			t1.ChildID as ChildID
		FROM
			$CTE_1 t1
		UNION ALL
		SELECT
			t2.ChildID as ChildID
		FROM
			$CTE_2 t2
	) t3

