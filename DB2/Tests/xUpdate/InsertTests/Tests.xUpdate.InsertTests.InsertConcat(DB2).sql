-- DB2 DB2.LUW DB2LUW
DELETE FROM
	"Parent" "p"
WHERE
	"p"."ParentID" > 1000

-- DB2 DB2.LUW DB2LUW
INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
SELECT
	"p"."ParentID" + 1000,
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1
UNION ALL
SELECT
	"p_1"."ParentID" + 1000,
	"p_1"."Value1"
FROM
	"Parent" "p_1"
WHERE
	"p_1"."ParentID" = 2

-- DB2 DB2.LUW DB2LUW
SELECT
	"p"."ParentID"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" > 1000
ORDER BY
	"p"."ParentID"

-- DB2 DB2.LUW DB2LUW
DELETE FROM
	"Parent" "p"
WHERE
	"p"."ParentID" > 1000

