-- YDB Ydb
DECLARE $take Int32
SET     $take = 1

SELECT
	t2.ParentID as ParentID,
	t2.Value1 as Value1
FROM
	(
		SELECT
			t1.ParentID as ParentID,
			t1.Value1 as Value1
		FROM
			Parent t1
		LIMIT $take
	) t2

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

