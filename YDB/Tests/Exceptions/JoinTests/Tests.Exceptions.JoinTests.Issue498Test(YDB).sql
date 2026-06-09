-- YDB Ydb

SELECT
	x.ParentID as ParentID
FROM
	Parent x
		INNER JOIN Child y ON x.ParentID = y.ParentID

-- YDB Ydb

SELECT DISTINCT
	g_1.ParentID as Key_1
FROM
	Parent g_1
		INNER JOIN Child y ON g_1.ParentID = y.ParentID

