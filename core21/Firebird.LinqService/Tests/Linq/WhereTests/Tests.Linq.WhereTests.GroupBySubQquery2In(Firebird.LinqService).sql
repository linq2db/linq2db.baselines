BeforeExecute
-- Firebird

SELECT
	"x"."ParentID",
	"x"."ChildID"
FROM
	"Child" "x"
WHERE
	(EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					Max("t1"."ChildID") as "c1"
				FROM
					"Child" "t1"
				GROUP BY
					"t1"."ParentID"
			) "t2"
		WHERE
			"t2"."c1" = "x"."ChildID"
	))

