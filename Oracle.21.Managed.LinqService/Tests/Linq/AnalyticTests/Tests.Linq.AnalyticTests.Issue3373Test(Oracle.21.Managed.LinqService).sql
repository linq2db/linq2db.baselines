BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	SUM(CASE
		WHEN t."ParentID" IN (3) THEN t."ChildID"
		ELSE 0
	END) OVER(PARTITION BY a_Parent."Value1" ORDER BY t."ParentID")
FROM
	"Child" t
		LEFT JOIN "Parent" a_Parent ON t."ParentID" = a_Parent."ParentID"

