-- YDB Ydb

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1,
	gc_1.not_null as not_null,
	gc_1.ParentID as ParentID_1,
	gc_1.ChildID as ChildID,
	gc_1.GrandChildID as GrandChildID,
	CASE
		WHEN gc_1.not_null IS NOT NULL THEN gc_1.ChildID
		ELSE 2147483647
	END as Value_1
FROM
	Child ch
		INNER JOIN Parent p ON ch.ParentID = p.ParentID
		LEFT JOIN (
			SELECT
				gc.GrandChildID as GrandChildID,
				1 as not_null,
				gc.ParentID as ParentID,
				gc.ChildID as ChildID
			FROM
				GrandChild gc
					INNER JOIN (
						SELECT
							MAX(max_1.GrandChildID) as c1
						FROM
							GrandChild max_1
						GROUP BY
							max_1.ChildID
					) t1 ON gc.GrandChildID = t1.c1
		) gc_1 ON p.ParentID = gc_1.ParentID
WHERE
	gc_1.not_null IS NULL OR (gc_1.GrandChildID <> 111 OR gc_1.GrandChildID IS NULL) AND (gc_1.GrandChildID <> 222 OR gc_1.GrandChildID IS NULL)

