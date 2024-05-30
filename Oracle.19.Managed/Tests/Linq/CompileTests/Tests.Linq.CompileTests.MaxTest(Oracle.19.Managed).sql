BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 1

SELECT
	MAX(c_1."ParentID")
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :ParentID

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = -1

SELECT
	MAX(c_1."ParentID")
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :ParentID

