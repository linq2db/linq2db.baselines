-- DB2 DB2.LUW DB2LUW

SELECT
	"g_1"."isValueAvailable",
	"g_1"."ParentID",
	"g_1"."Value_1",
	COUNT(*)
FROM
	(
		SELECT
			"c_1"."ParentID",
			CAST(Mod("c_1"."ChildID", 2) = 0 AS smallint) as "isValueAvailable",
			CAST(NULL AS Int) as "Value_1"
		FROM
			"Child" "c_1"
	) "g_1"
WHERE
	"g_1"."isValueAvailable"
GROUP BY
	"g_1"."isValueAvailable",
	"g_1"."ParentID",
	"g_1"."Value_1"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

