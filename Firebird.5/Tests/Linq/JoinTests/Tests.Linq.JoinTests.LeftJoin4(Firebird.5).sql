-- Firebird.5 Firebird4

SELECT
	"t2"."ParentID",
	"t2"."Value1",
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Parent" "t2"
		LEFT JOIN LATERAL (
			SELECT
				"y1"."ParentID",
				"y1"."ChildID"
			FROM
				"Child" "y1"
			WHERE
				"t2"."ParentID" = "y1"."ParentID" AND "t2"."Value1" = "y1"."ParentID"
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1
		LEFT JOIN "Child" "y4" ON "t2"."ParentID" = "y4"."ParentID" AND "t2"."Value1" = "y4"."ParentID"
WHERE
	"t2"."ParentID" = 1 AND "t2"."Value1" IS NOT NULL
ORDER BY
	"t2"."ParentID"

