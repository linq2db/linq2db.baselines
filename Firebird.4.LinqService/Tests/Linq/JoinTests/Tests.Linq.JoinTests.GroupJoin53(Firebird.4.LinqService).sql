BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID"
FROM
	"Parent" "p"
		CROSS JOIN LATERAL (
			SELECT
				"ch"."ParentID"
			FROM
				"Child" "ch"
			WHERE
				"p"."ParentID" = "ch"."ParentID"
			FETCH NEXT 1 ROWS ONLY
		) "t1"
WHERE
	"p"."ParentID" = 1

