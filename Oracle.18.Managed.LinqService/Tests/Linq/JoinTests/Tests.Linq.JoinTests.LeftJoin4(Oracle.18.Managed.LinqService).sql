BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Parent_1."ParentID",
	Parent_1."Value1",
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" Parent_1
		LEFT JOIN "Child" y4 ON Parent_1."ParentID" = y4."ParentID" AND Parent_1."Value1" = y4."ParentID"
		OUTER APPLY (
			SELECT
				y1."ParentID",
				y1."ChildID"
			FROM
				"Child" y1
			WHERE
				Parent_1."ParentID" = y1."ParentID" AND Parent_1."Value1" = y1."ParentID"
			FETCH NEXT 1 ROWS ONLY
		) t1
WHERE
	Parent_1."ParentID" = 1 AND Parent_1."Value1" IS NOT NULL
ORDER BY
	Parent_1."ParentID"

