BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	MAX("id"."ChildID")
FROM
	"Child" "id"
GROUP BY
	"id"."ParentID"

