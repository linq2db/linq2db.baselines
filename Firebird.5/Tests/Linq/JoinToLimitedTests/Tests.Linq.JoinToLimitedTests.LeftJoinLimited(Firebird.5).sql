-- Firebird.5 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."Value1",
	"c_2"."ParentID",
	"c_2"."ChildID"
FROM
	"Parent" "t1"
		LEFT JOIN (
			SELECT
				"c_1"."ParentID",
				"c_1"."ChildID"
			FROM
				"Child" "c_1"
			FETCH NEXT 1 ROWS ONLY
		) "c_2" ON "t1"."ParentID" = "c_2"."ParentID"
ORDER BY
	"c_2"."ChildID" DESC

