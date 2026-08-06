-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	Parent t2
		CROSS JOIN (
			SELECT
				1 as c1
			FROM
				Parent s
					CROSS JOIN Child child_1
					LEFT JOIN GrandChild grandChild_1 ON child_1.ParentID = grandChild_1.ParentID AND child_1.ChildID = grandChild_1.ChildID
		) t1

