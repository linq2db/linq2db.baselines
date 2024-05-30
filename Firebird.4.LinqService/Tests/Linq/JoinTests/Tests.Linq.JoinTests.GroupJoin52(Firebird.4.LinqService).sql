BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID"
FROM
	"Parent" "t2"
		CROSS JOIN LATERAL (
			SELECT
				"ch"."ParentID"
			FROM
				"Child" "ch"
			WHERE
				"t2"."ParentID" = "ch"."ParentID"
			FETCH NEXT 1 ROWS ONLY
		) "t1"
WHERE
	"t2"."ParentID" = 1

