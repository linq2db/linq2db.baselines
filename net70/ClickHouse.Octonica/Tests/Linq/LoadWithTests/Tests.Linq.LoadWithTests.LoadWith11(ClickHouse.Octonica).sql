﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	lw_Parent.ParentID,
	detail.ParentID,
	detail.ChildID
FROM
	(
		SELECT DISTINCT
			p.ParentID as ParentID
		FROM
			Parent p
		WHERE
			p.ParentID < toInt32(2)
	) lw_Parent
		INNER JOIN Child detail ON lw_Parent.ParentID = detail.ParentID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	lw_Parent.ParentID,
	detail.ParentID,
	detail.ChildID,
	detail.GrandChildID
FROM
	(
		SELECT DISTINCT
			p.ParentID as ParentID
		FROM
			Parent p
		WHERE
			p.ParentID < toInt32(2)
	) lw_Parent
		INNER JOIN GrandChild detail ON lw_Parent.ParentID = detail.ParentID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID < toInt32(2)

