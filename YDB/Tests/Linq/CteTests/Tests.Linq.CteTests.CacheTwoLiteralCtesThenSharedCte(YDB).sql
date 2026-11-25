-- YDB Ydb
$CTE_1 = 	SELECT
		c_1.ParentID as ParentID
	FROM
		Child c_1
	WHERE
		c_1.ParentID >= 2
;
$CTE_2 = 	SELECT
		c_2.ParentID as ParentID
	FROM
		Child c_2
	WHERE
		c_2.ParentID >= 4
;

SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			t1.ParentID as ParentID
		FROM
			$CTE_1 t1
		UNION ALL
		SELECT
			t2.ParentID as ParentID
		FROM
			$CTE_2 t2
	) t3

-- YDB Ydb
$CTE_1 = 	SELECT
		c_1.ParentID as ParentID
	FROM
		Child c_1
	WHERE
		c_1.ParentID >= 2
;

SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			t1.ParentID as ParentID
		FROM
			$CTE_1 t1
		UNION ALL
		SELECT
			t2.ParentID as ParentID
		FROM
			$CTE_1 t2
	) t3

