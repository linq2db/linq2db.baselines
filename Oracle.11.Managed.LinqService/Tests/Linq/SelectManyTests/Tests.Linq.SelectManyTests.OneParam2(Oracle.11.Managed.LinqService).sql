BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	a_Children."ParentID",
	a_Children."ChildID"
FROM
	"Parent" t
		INNER JOIN "Child" a_Children ON t."ParentID" = a_Children."ParentID"
WHERE
	a_Children."ParentID" = 1

