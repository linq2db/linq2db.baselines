-- Firebird.4 Firebird4

SELECT
	"pmp"."ParentID"
FROM
	"Child" "pmp"
GROUP BY
	"pmp"."ParentID"

-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

