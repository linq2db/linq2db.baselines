BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @p Int32
SET     @p = 1

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :p AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @p Int32
SET     @p = 2

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :p AND ROWNUM <= 1

