BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	grandChild_1."ParentID",
	grandChild_1."ChildID",
	grandChild_1."GrandChildID"
FROM
	"GrandChild" grandChild_1
		CROSS JOIN "Child" child_1
WHERE
	grandChild_1."ChildID" IS NOT NULL

