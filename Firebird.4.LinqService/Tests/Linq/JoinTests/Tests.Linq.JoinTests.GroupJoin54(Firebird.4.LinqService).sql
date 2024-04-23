BeforeExecute
-- Firebird.4 Firebird4

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "ch_1"
		WHERE
			"t2"."ParentID" = "ch_1"."ParentID"
	),
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Parent" "t2"
		CROSS JOIN LATERAL (
			SELECT
				"ch"."ParentID",
				"ch"."ChildID"
			FROM
				"Child" "ch"
			WHERE
				"t2"."ParentID" = "ch"."ParentID"
			FETCH NEXT 1 ROWS ONLY
		) "t1"
WHERE
	"t2"."ParentID" = 1

