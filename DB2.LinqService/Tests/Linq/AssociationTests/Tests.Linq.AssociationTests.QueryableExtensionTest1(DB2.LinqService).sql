BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"a_QueryableChildren"."ParentID",
	"a_QueryableChildren"."ChildID"
FROM
	"Parent" "_"
		INNER JOIN "Child" "a_QueryableChildren" ON "_"."ParentID" = "a_QueryableChildren"."ParentID"

