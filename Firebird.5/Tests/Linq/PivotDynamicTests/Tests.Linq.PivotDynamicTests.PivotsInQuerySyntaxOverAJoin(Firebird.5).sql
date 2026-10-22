-- Firebird.5 Firebird4
SELECT
	"g_1"."ParentID",
	SUM(CASE
		WHEN "c_1"."ChildID" = 21 THEN "c_1"."ChildID"
		ELSE NULL
	END),
	SUM(CASE
		WHEN "c_1"."ChildID" = 22 THEN "c_1"."ChildID"
		ELSE NULL
	END),
	SUM(CASE
		WHEN "c_1"."ChildID" = 31 THEN "c_1"."ChildID"
		ELSE NULL
	END),
	SUM(CASE
		WHEN "c_1"."ChildID" = 32 THEN "c_1"."ChildID"
		ELSE NULL
	END),
	SUM(CASE
		WHEN "c_1"."ChildID" = 33 THEN "c_1"."ChildID"
		ELSE NULL
	END)
FROM
	"Parent" "g_1"
		INNER JOIN "Child" "c_1" ON "g_1"."ParentID" = "c_1"."ParentID"
WHERE
	"g_1"."ParentID" = 2 OR "g_1"."ParentID" = 3
GROUP BY
	"g_1"."ParentID"

