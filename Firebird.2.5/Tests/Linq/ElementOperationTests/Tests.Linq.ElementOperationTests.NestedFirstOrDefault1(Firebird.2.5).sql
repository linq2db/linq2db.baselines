-- Firebird.2.5 Firebird

SELECT
	"t2"."ParentID",
	"t2"."ChildID"
FROM
	"Parent" "p"
		LEFT JOIN (
			SELECT FIRST 1
				"t1"."ParentID",
				"t1"."ChildID"
			FROM
				"Child" "t1"
		) "t2" ON 1=1

