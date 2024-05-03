BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @n Integer(4) -- Int32
SET     @n = 1

SELECT
	COUNT(CASE
		WHEN "g_2"."ParentID" < 3 THEN 1
		ELSE NULL
	END)
FROM
	(
		SELECT
			"g_1"."ParentID" + 1 as "ParentID",
			"g_1"."ChildID"
		FROM
			"Child" "g_1"
		WHERE
			"g_1"."ParentID" + 2 > @n
	) "g_2"
GROUP BY
	"g_2"."ParentID",
	"g_2"."ChildID"

