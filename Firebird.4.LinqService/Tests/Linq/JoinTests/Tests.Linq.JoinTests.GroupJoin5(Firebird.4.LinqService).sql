BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Parent" "t2"
		LEFT JOIN LATERAL (
			SELECT
				"ch"."ParentID",
				"ch"."ChildID"
			FROM
				"Child" "ch"
			WHERE
				"t2"."ParentID" = "ch"."ParentID"
			ORDER BY
				"ch"."ChildID"
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1
WHERE
	"t2"."ParentID" >= 1
ORDER BY
	"t2"."ParentID"

