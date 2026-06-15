-- YDB Ydb

SELECT
	pmp1.ChildID as ChildID
FROM
	Child pmp1
		CROSS JOIN (
			SELECT DISTINCT
				pmp.ParentID as ParentID
			FROM
				Child pmp
		) pmp_1

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1

