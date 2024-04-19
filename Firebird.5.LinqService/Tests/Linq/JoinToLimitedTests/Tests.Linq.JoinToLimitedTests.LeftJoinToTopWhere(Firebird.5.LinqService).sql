BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"o"."ParentID",
	"o"."Value1",
	"c_2"."ParentID",
	"c_2"."ChildID"
FROM
	"Parent" "o"
		LEFT JOIN LATERAL (
			SELECT
				"c_1"."ParentID",
				"c_1"."ChildID"
			FROM
				"Child" "c_1"
			WHERE
				"c_1"."ParentID" = "o"."ParentID"
			ORDER BY
				"c_1"."ChildID" DESC
			FETCH NEXT 1 ROWS ONLY
		) "c_2" ON 1=1

