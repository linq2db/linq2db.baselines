-- DB2 DB2.LUW DB2LUW
SELECT
	"p"."ParentID",
	CAST(EXISTS(
		SELECT
			*
		FROM
			"GrandChild" "g1"
		WHERE
			"g1"."ParentID" = "p"."ParentID" AND EXISTS(
				SELECT
					*
				FROM
					"GrandChild" "g2"
				WHERE
					("g2"."GrandChildID" = "g1"."GrandChildID" OR "g2"."GrandChildID" IS NULL AND "g1"."GrandChildID" IS NULL) AND
					"g2"."ChildID" IS NOT NULL
			)
	) AS smallint)
FROM
	"Parent" "p"
ORDER BY
	"p"."ParentID"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ParentID",
	"t1"."ChildID",
	"t1"."GrandChildID"
FROM
	"GrandChild" "t1"

