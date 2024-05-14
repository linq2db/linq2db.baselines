BeforeExecute
-- Firebird.4 Firebird4

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
				SELECT
					"param"."ParentID",
					"param"."Value1" as "Value_1"
				FROM
					"Parent" "param"
				FETCH NEXT 100 ROWS ONLY
			) "param_1"
		WHERE
			"param_1"."ParentID" = "c_1"."ParentID" AND "param_1"."Value_1" = "c_1"."ParentID"
	)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

