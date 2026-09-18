-- DB2 DB2.LUW DB2LUW
WITH "cte" ("Level_1", "ParentID", "ChildID")
AS
(
	SELECT
		CAST(0 AS Int),
		"p"."ParentID",
		CAST(NULL AS Int)
	FROM
		"Parent" "p"
	UNION ALL
	SELECT
		"ct"."Level_1" + 1,
		"c_1"."ParentID",
		"c_1"."ChildID"
	FROM
		"Child" "c_1",
		"cte" "ct"
	WHERE
		"ct"."ParentID" = "c_1"."ParentID" AND "ct"."Level_1" < 2
)
SELECT
	"h"."ParentID",
	"h"."ChildID",
	"h"."Level_1",
	"p_1"."Value1"
FROM
	"cte" "h"
		INNER JOIN "Parent" "p_1" ON "p_1"."ParentID" = "h"."ChildID"

