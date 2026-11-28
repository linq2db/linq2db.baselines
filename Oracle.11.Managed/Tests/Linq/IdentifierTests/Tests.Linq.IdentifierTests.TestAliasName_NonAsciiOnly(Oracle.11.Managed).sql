-- Oracle.11.Managed Oracle11
DECLARE @parentId Int32
SET     @parentId = 1

SELECT
	親."ParentID",
	親."Value1"
FROM
	"Parent" 親
		INNER JOIN "Child" 子 ON 子."ParentID" = 親."ParentID"
WHERE
	親."ParentID" = :parentId

-- Oracle.11.Managed Oracle11
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- Oracle.11.Managed Oracle11
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

