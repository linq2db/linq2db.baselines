BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."ParentID",
	"c_1"."ChildID"
FROM
	"Parent" "p",
	"Child" "c_1"
		LEFT JOIN "Parent" "a_Parent" ON "c_1"."ParentID" = "a_Parent"."ParentID"
WHERE
	"p"."ParentID" = "a_Parent"."ParentID" AND ("p"."Value1" = "a_Parent"."Value1" OR "p"."Value1" IS NULL AND "a_Parent"."Value1" IS NULL)
ORDER BY
	"p"."ParentID",
	"c_1"."ChildID"

