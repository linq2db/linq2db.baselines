BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"_"."ChildID",
	AVG("_"."ParentID")
FROM
	"Child" "_"
GROUP BY
	"_"."ChildID"

