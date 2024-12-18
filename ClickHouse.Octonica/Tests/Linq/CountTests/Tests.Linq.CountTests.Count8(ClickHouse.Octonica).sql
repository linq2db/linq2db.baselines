BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Child p
		LEFT JOIN Parent a_Parent ON p.ParentID = a_Parent.ParentID
WHERE
	a_Parent.ParentID = 1 AND a_Parent.ParentID IS NOT NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Child p
		LEFT JOIN Parent a_Parent ON p.ParentID = a_Parent.ParentID
WHERE
	a_Parent.ParentID = 1 AND a_Parent.ParentID IS NOT NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	a_Parent.ParentID
FROM
	Child ch
		LEFT JOIN Parent a_Parent ON ch.ParentID = a_Parent.ParentID

