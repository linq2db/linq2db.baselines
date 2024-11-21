BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	a_MiddleGeneric."ParentID",
	CASE
		WHEN a_MiddleGeneric."ParentID" IS NOT NULL AND a_Bottom."ParentID" IS NOT NULL
			THEN 1
		ELSE 0
	END,
	a_Bottom."ParentID",
	a_Bottom."ChildID",
	a_Bottom."GrandChildID"
FROM
	"Parent" t
		LEFT JOIN "Child" a_MiddleGeneric ON t."ParentID" = a_MiddleGeneric."ParentID" AND a_MiddleGeneric."ChildID" > 1
		LEFT JOIN "GrandChild" a_Bottom ON a_MiddleGeneric."ChildID" = a_Bottom."ChildID"
WHERE
	t."ParentID" IN (1, 5)
ORDER BY
	t."ParentID"

