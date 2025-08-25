BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Parent" "t2"
		LEFT JOIN LATERAL (
			SELECT
				"c_1"."ParentID",
				"c_1"."ChildID"
			FROM
				"Child" "c_1"
			WHERE
				"t2"."ParentID" = "c_1"."ParentID"
			ORDER BY
				"c_1"."ChildID"
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1

