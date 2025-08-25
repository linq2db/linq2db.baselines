BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"ch1"."ParentID",
	"ch1"."ChildID"
FROM
	"Parent" "t1"
		INNER JOIN "Child" "ch" ON "t1"."ParentID" = "ch"."ParentID"
		INNER JOIN "Child" "ch1" ON "ch"."ChildID" = "ch1"."ChildID"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

