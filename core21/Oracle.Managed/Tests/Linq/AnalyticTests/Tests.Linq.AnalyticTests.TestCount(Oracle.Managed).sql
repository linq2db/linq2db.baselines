BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	Count(*), 
	COUNT(c_1.ChildID), 
	COUNT(ALL c_1.ChildID), 
	COUNT(DISTINCT c_1.ChildID)
FROM
	Parent p
		INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID
GROUP BY
	p.ParentID

BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	Count(*)
FROM
	Child t1

BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	COUNT(t1.ParentID)
FROM
	Child t1

BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	COUNT(ALL t1.ParentID)
FROM
	Child t1

BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	COUNT(DISTINCT t1.ParentID)
FROM
	Child t1

