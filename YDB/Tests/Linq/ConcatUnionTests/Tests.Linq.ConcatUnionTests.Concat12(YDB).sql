-- YDB Ydb

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1,
	CAST(NULL AS Int32) as c1,
	CAST(NULL AS Int32) as ParentID_1,
	CAST(NULL AS Int32) as Value1_1
FROM
	Parent p
WHERE
	p.ParentID = 1
UNION ALL
SELECT
	CAST(NULL AS Int32) as ParentID,
	CAST(NULL AS Int32) as Value1,
	a_Parent.ParentID as c1,
	a_Parent.ParentID as ParentID_1,
	a_Parent.Value1 as Value1_1
FROM
	Child ch
		LEFT JOIN Parent a_Parent ON ch.ParentID = a_Parent.ParentID
WHERE
	ch.ParentID = 2

