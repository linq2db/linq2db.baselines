BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	a_QueryableChildren."ParentID",
	a_QueryableChildren."ChildID"
FROM
	"Parent" t1
		INNER JOIN "Child" a_QueryableChildren ON t1."ParentID" = a_QueryableChildren."ParentID"

