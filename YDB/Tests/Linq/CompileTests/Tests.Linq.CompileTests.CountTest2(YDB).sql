-- YDB Ydb
DECLARE $p Int32
SET     $p = 1

SELECT
	COUNT(*) as Count_1
FROM
	Child c_1
WHERE
	c_1.ParentID = $p

-- YDB Ydb
DECLARE $p Int32
SET     $p = -1

SELECT
	COUNT(*) as Count_1
FROM
	Child c_1
WHERE
	c_1.ParentID = $p

