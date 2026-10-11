-- DB2 DB2.LUW DB2LUW
SELECT
	"p"."ParentID",
	CAST(EXISTS(
		SELECT
			*
		FROM
			"GrandChild" "g_1"
		WHERE
			"g_1"."ChildID" IS NOT NULL AND "g_1"."ParentID" = "p"."ParentID"
	) AS smallint)
FROM
	"Parent" "p"
ORDER BY
	"p"."ParentID"

