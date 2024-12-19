﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	p1.ParentID,
	NVL(p1.ParentID, NULL),
	p1.Value1,
	NULL::Int,
	NULL::Int,
	NULL::Int
FROM
	Parent p1
UNION
SELECT
	Nvl(p2.Value1, 0),
	NULL::Int,
	NULL::Int,
	t1.ParentID,
	t1.ParentID,
	t1.ChildID
FROM
	Parent p2
		LEFT JOIN (
			SELECT
				a_Children.ParentID,
				a_Children.ChildID,
				ROW_NUMBER() OVER (PARTITION BY a_Children.ParentID ORDER BY a_Children.ChildID DESC) as rn,
				a_Children.ParentID as ParentID_1
			FROM
				Child a_Children
		) t1 ON p2.ParentID = t1.ParentID_1 AND t1.rn <= 1

