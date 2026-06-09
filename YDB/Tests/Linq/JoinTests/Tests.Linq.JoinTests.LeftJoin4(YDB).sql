-- YDB Ydb

SELECT
	Parent_1.ParentID as ParentID,
	Parent_1.Value1 as Value1,
	t2.ParentID as ParentID_1,
	t2.ChildID as ChildID
FROM
	Parent Parent_1
		LEFT JOIN (
			SELECT
				t1.ParentID as ParentID,
				t1.ChildID as ChildID
			FROM
				(
					SELECT
						y1.ParentID as ParentID,
						y1.ChildID as ChildID,
						ROW_NUMBER() OVER (PARTITION BY y1.ParentID ORDER BY y1.ParentID) as rn
					FROM
						Child y1
				) t1
			WHERE
				t1.rn = 1
		) t2 ON Parent_1.ParentID = t2.ParentID AND Parent_1.Value1 = t2.ParentID
		LEFT JOIN Child y4 ON Parent_1.ParentID = y4.ParentID AND Parent_1.Value1 = y4.ParentID
WHERE
	Parent_1.ParentID = 1 AND Parent_1.Value1 IS NOT NULL
ORDER BY
	Parent_1.ParentID

