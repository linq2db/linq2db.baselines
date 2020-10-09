BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 3

SELECT 
	t1.ParentID, 
	t1.ChildID
FROM
	Child t1
OFFSET :skip ROWS

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 4

SELECT 
	t1.ParentID, 
	t1.ChildID
FROM
	Child t1
OFFSET :skip ROWS

