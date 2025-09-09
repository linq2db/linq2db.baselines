BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	COUNT(CASE
		WHEN "g_1"."ChildID" > 20 THEN 1
		ELSE NULL
	END)
FROM
	"Child" "g_1"
GROUP BY
	"g_1"."ParentID",
	"g_1"."ChildID"

