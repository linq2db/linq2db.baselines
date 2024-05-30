BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 1

SELECT
	COUNT(*)
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :ParentID

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = -1

SELECT
	COUNT(*)
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :ParentID

