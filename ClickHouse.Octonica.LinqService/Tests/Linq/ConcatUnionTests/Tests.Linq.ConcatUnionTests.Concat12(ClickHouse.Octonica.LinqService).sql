BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	p.ParentID,
	p.Value1,
	toInt32(NULL) as c1,
	toInt32(NULL) as ParentID_1,
	toInt32(NULL) as Value1_1
FROM
	Parent p
WHERE
	p.ParentID = 1
UNION ALL
SELECT
	toInt32(NULL) as ParentID,
	toInt32(NULL) as Value1,
	a_Parent.ParentID as c1,
	a_Parent.ParentID as ParentID_1,
	a_Parent.Value1 as Value1_1
FROM
	Child ch
		LEFT JOIN Parent a_Parent ON ch.ParentID = a_Parent.ParentID
WHERE
	ch.ParentID = 2

