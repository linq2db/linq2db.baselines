BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"x"."ParentID",
	"x"."ChildID"
FROM
	"Child" "x"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					MAX("x_1"."ChildID") as "In_1"
				FROM
					"Child" "x_1"
				GROUP BY
					"x_1"."ParentID"
			) "t1"
		WHERE
			"x"."ChildID" = "t1"."In_1"
	)

