-- Informix.DB2 Informix

SELECT
	p.ParentID,
	NVL(p.ParentID, NULL),
	p.Value1,
	NULL::Int,
	NULL::Int,
	NULL::Int
FROM
	Parent p
UNION
SELECT
	Nvl(p2.Value1, 0),
	NULL::Int,
	NULL::Int,
	t1.cond,
	t1.cond,
	t1.ChildID
FROM
	Parent p2
		LEFT JOIN (
			SELECT
				a_Children.ParentID as cond,
				a_Children.ChildID,
				ROW_NUMBER() OVER (PARTITION BY a_Children.ParentID ORDER BY a_Children.ChildID DESC) as rn
			FROM
				Child a_Children
		) t1 ON p2.ParentID = t1.cond AND t1.rn <= 1

