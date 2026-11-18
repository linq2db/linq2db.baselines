-- YDB Ydb
SELECT
	c_1.ChildID as ChildID,
	Coalesce(c_1.ChildID, 0) BETWEEN 0 AND 100 as InRange,
	Coalesce(c_1.ChildID, 0) NOT BETWEEN 0 AND 100 as OutOfRange,
	CASE
		WHEN c_1.ChildID BETWEEN 0 AND 100 THEN true
		ELSE false
	END as NullableInRange
FROM
	Parent p
		LEFT JOIN Child c_1 ON p.ParentID = c_1.ParentID
WHERE
	p.ParentID = 5
LIMIT 2

