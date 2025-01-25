BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 1

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :ParentID
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 2

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :ParentID
FETCH NEXT 1 ROWS ONLY

