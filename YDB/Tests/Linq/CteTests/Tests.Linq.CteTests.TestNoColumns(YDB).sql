-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Child t1

-- YDB Ydb

$CTE1_ = 	SELECT
		1 as c1
	FROM
		Child t1
;

SELECT
	COUNT(*) as Count_1
FROM
	$CTE1_ t2

-- YDB Ydb

$CTE1_ = 	SELECT
		1 as c1
	FROM
		Child c_1
;

SELECT
	COUNT(*) as Count_1
FROM
	$CTE1_ t1

-- YDB Ydb

$CTE1_ = 	SELECT
		1 as c1
	FROM
		Child c_1
;

SELECT
	EXISTS(
		SELECT
			1
		FROM
			$CTE1_ t1
	) as c1

