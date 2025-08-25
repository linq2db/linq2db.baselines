BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

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
			"Parent" "p"
		WHERE
			"p"."ParentID" = 1 AND "c_1"."ParentID" = "p"."ParentID"
	)

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

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
			"Parent" "p"
		WHERE
			"p"."ParentID" = 2 AND "c_1"."ParentID" = "p"."ParentID"
	)

