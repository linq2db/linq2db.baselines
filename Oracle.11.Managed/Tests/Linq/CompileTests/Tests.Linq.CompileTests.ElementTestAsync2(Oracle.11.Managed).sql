BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 1

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :ParentID AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 2

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :ParentID AND ROWNUM <= 1

