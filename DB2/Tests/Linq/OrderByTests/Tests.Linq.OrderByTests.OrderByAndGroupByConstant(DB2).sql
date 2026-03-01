-- DB2 DB2.LUW DB2LUW

SELECT
	"g_2"."Count_1",
	1 + "g_2"."Expr",
	"g_2"."Max_1"
FROM
	(
		SELECT
			COUNT(*) as "Count_1",
			MIN("g_1"."ChildID") as "Expr",
			MAX("g_1"."ChildID") as "Max_1"
		FROM
			"Child" "g_1"
	) "g_2"
FETCH NEXT 1 ROWS ONLY

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

