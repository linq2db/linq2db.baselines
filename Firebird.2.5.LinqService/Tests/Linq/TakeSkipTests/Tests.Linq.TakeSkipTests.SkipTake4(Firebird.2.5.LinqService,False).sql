BeforeExecute
-- Firebird.2.5 Firebird

SELECT SKIP 2
	"t2"."ParentID",
	"t2"."ChildID"
FROM
	(
		SELECT FIRST 7 SKIP 1
			"t1"."ChildID",
			"t1"."ParentID"
		FROM
			"Child" "t1"
		ORDER BY
			"t1"."ChildID" DESC
	) "t2"
ORDER BY
	"t2"."ChildID"

