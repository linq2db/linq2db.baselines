BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	GrandChild t1
GROUP BY
	t1.ParentID,
	t1.ChildID

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 3
DECLARE @ChildID Int32
SET     @ChildID = 33

SELECT
	ch.GrandChildID
FROM
	GrandChild ch
WHERE
	(ch.ParentID = :ParentID AND ch.ChildID = :ChildID)

