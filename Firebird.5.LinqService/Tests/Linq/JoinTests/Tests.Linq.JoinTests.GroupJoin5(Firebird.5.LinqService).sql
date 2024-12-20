BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Parent" "p"
		LEFT JOIN LATERAL (
			SELECT
				"ch"."ParentID",
				"ch"."ChildID"
			FROM
				"Child" "ch"
			WHERE
				"p"."ParentID" = "ch"."ParentID"
			ORDER BY
				"ch"."ChildID"
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1
WHERE
	"p"."ParentID" >= 1
ORDER BY
	"p"."ParentID"

