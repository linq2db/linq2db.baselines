BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	lw_Parent.ParentID, 
	detail.ParentID, 
	detail.ChildID
FROM
	( 
		SELECT DISTINCT 
			p.ParentID
		FROM
			Parent p
		WHERE
			p.ParentID < 2
	) lw_Parent
		INNER JOIN Child detail ON lw_Parent.ParentID = detail.ParentID

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	lw_Parent.ParentID, 
	detail.ParentID, 
	detail.ChildID, 
	detail.GrandChildID
FROM
	( 
		SELECT DISTINCT 
			p.ParentID
		FROM
			Parent p
		WHERE
			p.ParentID < 2
	) lw_Parent
		INNER JOIN GrandChild detail ON lw_Parent.ParentID = detail.ParentID

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	p.ParentID, 
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID < 2

