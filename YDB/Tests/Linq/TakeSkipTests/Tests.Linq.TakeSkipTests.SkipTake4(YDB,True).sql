-- YDB Ydb
DECLARE $take Int32
SET     $take = 7
DECLARE $skip Int32
SET     $skip = 1

SELECT
	t2.ParentID as ParentID,
	t2.ChildID as ChildID
FROM
	(
		SELECT
			t1.ChildID as ChildID,
			t1.ParentID as ParentID
		FROM
			Child t1
		ORDER BY
			t1.ChildID DESC
		LIMIT $take OFFSET $skip 
	) t2
ORDER BY
	t2.ChildID

