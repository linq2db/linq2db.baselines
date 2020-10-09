BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 3

SELECT 
	c_1.ParentID, 
	c_1.ChildID
FROM
	Child c_1,
	( 
		SELECT 
			p.ParentID
		FROM
			GrandChild p
		FETCH NEXT :take ROWS ONLY
	) t1
WHERE
	c_1.ParentID = t1.ParentID

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 12
DECLARE @take Int32
SET     @take = 3

SELECT 
	c_1.ParentID, 
	c_1.ChildID
FROM
	Child c_1,
	( 
		SELECT 
			p.ParentID
		FROM
			GrandChild p
		OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 
	) t1
WHERE
	c_1.ParentID = t1.ParentID

