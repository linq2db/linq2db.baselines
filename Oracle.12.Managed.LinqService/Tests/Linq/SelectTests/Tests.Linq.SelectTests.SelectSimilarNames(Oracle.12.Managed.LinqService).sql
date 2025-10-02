BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @parentId Int32
SET     @parentId = 1

SELECT
	parent_1."ParentID",
	parent_1."ChildID"
FROM
	"Parent" child_1
		INNER JOIN "Child" parent_1 ON parent_1."ParentID" = child_1."ParentID"
WHERE
	child_1."Value1" = :parentId

