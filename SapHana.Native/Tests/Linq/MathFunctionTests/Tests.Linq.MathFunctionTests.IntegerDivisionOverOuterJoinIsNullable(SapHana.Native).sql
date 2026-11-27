-- SapHana.Native SapHana
SELECT
	"p"."ParentID"
FROM
	"Parent" "p"
		LEFT JOIN "Child" "c_1" ON "c_1"."ParentID" = "p"."ParentID"
WHERE
	CAST("c_1"."ChildID" / 2 AS Integer) <> 10 OR "c_1"."ChildID" IS NULL

