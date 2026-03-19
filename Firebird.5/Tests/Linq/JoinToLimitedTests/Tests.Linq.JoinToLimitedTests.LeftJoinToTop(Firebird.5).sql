-- Firebird.5 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."Value1",
	"c_2"."ParentID",
	"c_2"."ChildID"
FROM
	"Parent" "t1"
		LEFT JOIN LATERAL (
			SELECT
				"c_1"."ParentID",
				"c_1"."ChildID"
			FROM
				"Child" "c_1"
			WHERE
				"t1"."ParentID" = "c_1"."ParentID"
			ORDER BY
				"c_1"."ChildID" DESC
			FETCH NEXT 1 ROWS ONLY
		) "c_2" ON 1=1

