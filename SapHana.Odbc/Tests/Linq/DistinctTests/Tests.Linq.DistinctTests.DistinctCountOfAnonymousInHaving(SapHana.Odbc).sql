-- SapHana.Odbc SapHanaOdbc
SELECT DISTINCT
	"grp"."ParentID"
FROM
	"GrandChild" "grp"
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					"g_1"."ChildID"
				FROM
					"GrandChild" "g_1"
				WHERE
					"grp"."ParentID" = "g_1"."ParentID" OR "grp"."ParentID" IS NULL AND "g_1"."ParentID" IS NULL
			) "t1"
	) > 1
ORDER BY
	"grp"."ParentID"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."ParentID",
	"t1"."ChildID",
	"t1"."GrandChildID"
FROM
	"GrandChild" "t1"

