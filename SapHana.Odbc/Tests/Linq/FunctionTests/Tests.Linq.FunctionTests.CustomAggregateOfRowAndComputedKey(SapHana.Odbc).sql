-- SapHana.Odbc SapHanaOdbc
SELECT
	"g_2"."Key_1",
	SUM("g_2"."ChildID" + "g_2"."Key_1"),
	SUM("g_2"."ChildID" + Abs("g_2"."Key_1"))
FROM
	(
		SELECT
			MOD("g_1"."ChildID", 3) as "Key_1",
			"g_1"."ChildID"
		FROM
			"Child" "g_1"
	) "g_2"
GROUP BY
	"g_2"."Key_1"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"g_2"."ParentID",
	"g_2"."Odd",
	SUM("g_2"."ChildID" + "g_2"."ParentID")
FROM
	(
		SELECT
			"g_1"."ParentID",
			MOD("g_1"."ChildID", 2) as "Odd",
			"g_1"."ChildID"
		FROM
			"Child" "g_1"
	) "g_2"
GROUP BY
	"g_2"."ParentID",
	"g_2"."Odd"

