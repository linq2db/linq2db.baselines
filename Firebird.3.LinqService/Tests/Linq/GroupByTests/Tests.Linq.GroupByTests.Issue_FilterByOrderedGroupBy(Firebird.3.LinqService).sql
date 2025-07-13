BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t"."ParentID",
	"t"."ChildID"
FROM
	"Child" "t"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					"x"."ParentID"
				FROM
					"Child" "x"
				GROUP BY
					"x"."ParentID"
				ORDER BY
					MAX("x"."ChildID") DESC
				FETCH NEXT 2 ROWS ONLY
			) "t1"
		WHERE
			"t"."ParentID" = "t1"."ParentID"
	)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

