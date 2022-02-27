BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 3

SELECT
	ch.ParentID,
	ch.ChildID
FROM
	Child ch
WHERE
	(ch.ChildID > 3 OR ch.ChildID < 4)
OFFSET :skip ROWS

