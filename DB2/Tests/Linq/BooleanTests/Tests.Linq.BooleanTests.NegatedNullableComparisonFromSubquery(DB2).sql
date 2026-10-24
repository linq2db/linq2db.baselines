-- DB2 DB2.LUW DB2LUW
SELECT
	"x"."ParentID"
FROM
	"Parent" "x"
WHERE
	"x"."Value1" <> 1 OR "x"."Value1" IS NULL

-- DB2 DB2.LUW DB2LUW
SELECT
	"x"."ParentID"
FROM
	"Parent" "x"
WHERE
	NOT ("x"."Value1" = 1 AND "x"."Value1" IS NOT NULL)

-- DB2 DB2.LUW DB2LUW
SELECT
	"x"."ParentID"
FROM
	"Parent" "x"
WHERE
	NOT ("x"."Value1" = 1 AND "x"."Value1" IS NOT NULL)

