BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	x5."ParentID",
	x5."Value1",
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" x5
		LEFT JOIN "Child" y2 ON x5."ParentID" = y2."ParentID" AND x5."Value1" = y2."ParentID"
		OUTER APPLY (
			SELECT
				y1."ParentID",
				y1."ChildID"
			FROM
				"Child" y1
			WHERE
				(y1."ParentID" = x5."ParentID" AND y1."ParentID" = x5."Value1")
			FETCH NEXT :take ROWS ONLY
		) t1
WHERE
	x5."ParentID" = 1 AND x5."Value1" IS NOT NULL
ORDER BY
	x5."ParentID"

