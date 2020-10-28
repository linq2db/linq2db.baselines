BeforeExecute
-- Firebird3 Firebird

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	(EXISTS(
		SELECT
			*
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" = 1 AND "p"."ParentID" = "c_1"."ParentID"
	))

BeforeExecute
-- Firebird3 Firebird

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	(EXISTS(
		SELECT
			*
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" = 2 AND "p"."ParentID" = "c_1"."ParentID"
	))

