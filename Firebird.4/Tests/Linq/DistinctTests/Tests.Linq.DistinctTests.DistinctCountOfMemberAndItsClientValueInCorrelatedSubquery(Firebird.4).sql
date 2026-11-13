-- Firebird.4 Firebird4
SELECT
	"p"."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					"c_1"."ChildID"
				FROM
					"Child" "c_1"
				WHERE
					"c_1"."ParentID" = "p"."ParentID"
			) "t1"
	)
FROM
	"Parent" "p"
ORDER BY
	"p"."ParentID"

-- Firebird.4 Firebird4
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- Firebird.4 Firebird4
SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

