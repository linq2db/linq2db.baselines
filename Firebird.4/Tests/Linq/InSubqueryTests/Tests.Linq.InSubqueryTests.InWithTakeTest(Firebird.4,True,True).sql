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
					"v"."ParentID"
				FROM
					"Parent" "v"
				FETCH NEXT 100 ROWS ONLY
			) "t1"
		WHERE
			"c_1"."ParentID" = "t1"."ParentID"
	)

-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

