BeforeExecute
-- Firebird

SELECT
	"p1"."ParentID",
	"p1"."Value1",
	"t1"."ParentID",
	"t1"."Sum1"
FROM
	"Parent" "p1"
		LEFT JOIN (
			SELECT
				"o"."ParentID",
				"o"."Sum1"
			FROM
				(
					SELECT
						"p"."ParentID",
						Sum("p"."ParentID") as "Sum1"
					FROM
						"Parent" "p"
					WHERE
						EXISTS(
							SELECT
								*
							FROM
								"Child" "ch"
							WHERE
								"ch"."ParentID" = "p"."ParentID"
						)
					GROUP BY
						"p"."ParentID"
				) "o"
		) "t1" ON "t1"."ParentID" = "p1"."ParentID"

