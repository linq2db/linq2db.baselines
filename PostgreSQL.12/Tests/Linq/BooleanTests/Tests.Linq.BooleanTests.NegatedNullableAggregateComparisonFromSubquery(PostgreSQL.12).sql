-- PostgreSQL.12 PostgreSQL12
SELECT
	x."ParentID"
FROM
	"Parent" x
WHERE
	CASE
		WHEN (
			SELECT
				MAX("a_Children"."ChildID")
			FROM
				"Child" "a_Children"
			WHERE
				x."ParentID" = "a_Children"."ParentID"
		) = 11
			THEN False
		ELSE True
	END

