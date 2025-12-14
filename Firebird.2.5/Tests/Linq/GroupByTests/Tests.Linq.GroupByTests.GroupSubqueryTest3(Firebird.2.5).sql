-- Firebird.2.5 Firebird

SELECT
	"pmp"."ParentID"
FROM
	"Child" "pmp"
GROUP BY
	"pmp"."ParentID"

-- Firebird.2.5 Firebird

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

