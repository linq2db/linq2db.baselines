BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

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
					MAX("x_1"."ChildID") as MAX_1
				FROM
					"Child" "x_1"
				GROUP BY
					"x_1"."ParentID"
			) "t1"
		WHERE
			"x"."ChildID" = "t1".MAX_1
	)

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

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
					MAX("x_1"."ChildID") as MAX_1
				FROM
					"Child" "x_1"
				GROUP BY
					"x_1"."ParentID"
			) "t1"
		WHERE
			"x"."ChildID" = "t1".MAX_1
	)

