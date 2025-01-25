BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT FIRST 100 SKIP 1
					"p"."ParentID"
				FROM
					"Parent" "p"
			) "t1"
		WHERE
			"c_1"."ParentID" = "t1"."ParentID"
	)

